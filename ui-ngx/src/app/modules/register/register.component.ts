///
/// Copyright © 2016-2020 The Thingsboard Authors
///
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
///
///     http://www.apache.org/licenses/LICENSE-2.0
///
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.
///

import { Component, OnInit } from '@angular/core';
import { Store } from '@ngrx/store';
import { AppState } from '@core/core.state';
import { PageComponent } from '@shared/components/page.component';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { MustMatch } from '../../_helpers/must-match.validator';

@Component({
  selector: 'tb-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss'],
})
export class RegisterComponent extends PageComponent implements OnInit {
  signupFormGroup = this.fb.group({
    firstName: ['', Validators.required],
    lastName: ['', Validators.required],
    email: ['', [Validators.required, Validators.email]],
    password: ['', [Validators.required, Validators.minLength(6)]],
    confirmPassword: ['', Validators.required]
  }, {
    validator: MustMatch('password', 'confirmPassword')
  });
  submitError = null;
  submitSuccess = false;
  submitted = false;
  isRegistering = false;
  breakpoint: number;

  constructor (
    protected store: Store<AppState>,
    public fb: FormBuilder,
    private router: Router
  ) {
    super(store);
  }

  async signup() {
    this.submitted = true;
    if (this.signupFormGroup.valid) {
      this.isRegistering = true;
      const formValues = this.signupFormGroup.value
      formValues.title = `${formValues.firstName} ${formValues.lastName}`
      delete formValues.confirmPassword
      try {
        const res = await fetch('https://api.griot.io/register', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(formValues),
        })
        if (res.status >= 400) {
          const responseData = await res.json()
          this.submitError = responseData.message
        } else {
          this.submitSuccess = true
        }
      } catch (e) {
        console.log(e)

      } finally {
        this.isRegistering = false
      }
    } else {
      Object.keys(this.signupFormGroup.controls).forEach((field) => {
        const control = this.signupFormGroup.get(field);
        control.markAsTouched({ onlySelf: true });
      });
    }
  }

  onResize(event) {
    this.breakpoint = event.target.innerWidth <= 599 ? 1 : 2;
  }

  ngOnInit() {
    this.breakpoint = window.innerWidth <= 599 ? 1 : 2;
  }

  get f() { return this.signupFormGroup.controls; }
}
