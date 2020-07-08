<#--

    Copyright © 2016-2020 The Thingsboard Authors

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" style="font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
<head>
<meta name="viewport" content="width=device-width" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Griot - Account Lockout</title>


<style type="text/css">
img {
max-width: 100%;
}
body {
-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none; width: 100% !important; height: 100%; line-height: 1.6em;
}
body {
background-color: #f6f6f6;
}
@media only screen and (max-width: 640px) {
  body {
    padding: 0 !important;
  }
  h1 {
    font-weight: 800 !important; margin: 20px 0 5px !important;
  }
  h2 {
    font-weight: 800 !important; margin: 20px 0 5px !important;
  }
  h3 {
    font-weight: 800 !important; margin: 20px 0 5px !important;
  }
  h4 {
    font-weight: 800 !important; margin: 20px 0 5px !important;
  }
  h1 {
    font-size: 22px !important;
  }
  h2 {
    font-size: 18px !important;
  }
  h3 {
    font-size: 16px !important;
  }
  .container {
    padding: 0 !important; width: 100% !important;
  }
  .content {
    padding: 0 !important;
  }
  .content-wrap {
    padding: 10px !important;
  }
  .invoice {
    width: 100% !important;
  }
}
</style>
</head>

<body itemscope itemtype="http://schema.org/EmailMessage" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; -webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none; width: 100% !important; height: 100%; line-height: 1.6em; background-color: #f6f6f6; margin: 0;" bgcolor="#f6f6f6">

<table class="body-wrap" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;" bgcolor="#f6f6f6"><tr style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;"><td style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;" valign="top"></td>
		<td class="container" width="600" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;" valign="top">
			<div class="content" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;">
				<table class="main" width="100%" cellpadding="0" cellspacing="0" itemprop="action" itemscope itemtype="http://schema.org/ConfirmAction" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;" bgcolor="#fff"><tr style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;"><td class="content-wrap" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 20px;" valign="top">
							<meta itemprop="name" content="Confirm Email" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;" /><table width="100%" cellpadding="0" cellspacing="0" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">								
								<tr style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
									<td class="content-block" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; color: #348eda; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;" valign="top">
										<h2>Griot user account has been locked out</h2>
									</td>
                </tr>
                <tr style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                  <td class="content-block" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;" valign="top">
                    Griot user account ${lockoutAccount} has been lockout due to failed credentials were provided more than ${maxFailedLoginAttempts} times.
                  </td>
                </tr>
                <tr>
                  <td class="content-block" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;" valign="top">
                    &mdash; Griot
                  </td>
                  <td valign="top" style="text-align: right;">
                    <img src="data:image/png;base64,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" style="width: 150px" />
                  </td>
                </tr>
						  </table>
            </td>
					</tr>
				</table>
				<div class="footer" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;">
					<table width="100%" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
						<tr style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
							<td class="aligncenter content-block" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; color: #999; text-align: center; margin: 0; padding: 0 0 20px;" align="center" valign="top">This email was sent to <a href="mailto:${targetEmail}" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; color: #999; text-decoration: underline; margin: 0;">${targetEmail}</a> by Griot.</td>
						</tr>
					</table>
				</div>
			</div>
		</td>
		<td style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;" valign="top"></td>
	</tr>
</table>
</body>
</html>
