Param(
    [string] [Parameter(Mandatory=$true)] $Uri,
    [boolean] [Parameter(Mandatory=$false)] $displayUri
    )

while($true) {
  $R = Invoke-WebRequest -URI $Uri
  $timestamp = Get-Date
  $output = ""
  if ($displayUri) {
    $output = $output = '{0} | {1} | {2}' -f($timestamp, $R.StatusCode, $Uri)
  } else {

    $output = '{0} | {1}' -f($timestamp, $R.StatusCode) 
  }
  Write-Output $output

}


# .\polling.ps1 -Uri https://openhackxwt4lo49poi-staging.azurewebsites.net/api/healthcheck/poi
