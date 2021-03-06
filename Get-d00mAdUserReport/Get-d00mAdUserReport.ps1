﻿#requires -Modules ActiveDirectory

<#
.SYNOPSIS

.DESCRIPTION
    
.EXAMPLE

.EXAMPLE

.EXAMPLE

#>
function Get-d00mAdUserReport
{
    [CmdletBinding()]
    param
    (
        [Parameter()]
        [String]$FilePath = (Get-Location)
    )

    begin
    {
        $timer = New-Object -TypeName System.Diagnostics.StopWatch
        $cmdletName = $PSCmdlet.MyInvocation.MyCommand.Name
        Write-Verbose -Message ('{0} : Begin execution : {1}' -f $cmdletName, (Get-Date))
        $timer.Start()
    }

    process
    {
        Write-Verbose -Message ('{0} : Report directory : {1}' -f $cmdletName, $FilePath)
        
        try
        {
            $adUsers = Get-AdUser -Filter * -Properties * -ErrorAction Stop
            Write-Verbose -Message ('{0} : Found {1} AD user objects' -f $cmdletName, $adUsers.Count)

            if ($adUsers.Count -gt 0)
            {
                $html = New-Object -TypeName System.Text.StringBuilder
                $html.AppendLine("
                <html>
                    <head>
                        <title>d00m AD User Report</title>
                        <style>
                            table, tr, td {
                                border: 1px solid green;
                                border-collapse: collapse;
                            }
                            
                            tr.alt td {
                                background-color: `#171717;
                            }

                            tr.heading td {
                                font-weight: bold;
                                text-align: center;
                                font-size: larger;
                                color: white;
                                background-color: `#333333;
                            }

                            body {
                                background-color: black;
                                color: `#bdbdbd;
                                font-family: lucida consolas, monospace;
                            }
                        </style>
                    </head>
                    <body>
                        <table>
                            <tr class=`"heading`">
                                <td colspan=`"2`">d00m AD User Report</td>
                            </tr>
                            <tr>
                                <td>Report</td>
                                <td>$($cmdletName)</td>
                            </tr>
                            <tr>
                                <td>Date</td>
                                <td>$(Get-Date)</td>
                            </tr>
                        </table>
                        </br>
                        <table>
                            <tr class=`"heading`">
                                <td>DisplayName</td>
                                <td>SamAccountName</td>
                                <td>EmailAddress</td>
                                <td>Department</td>
                                <td>Description</td>
                                <td>Title</td>
                                <td>UserPrincipalName</td>
                                <td>PasswordNeverExpires</td>
                                <td>WhenCreated</td>
                                <td>Enabled</td>
                                <td>LockedOut</td>
                                <td>LastLogonDate</td>
                            </tr>") | Out-Null

                $count = 1
                $adUsers = $adUsers | Sort-Object -Property SurName
                foreach ($adUser in $adUsers)
                {
                    if ([bool]!($count%2))
                    {
                        $html.AppendLine('<tr class="alt">') | Out-Null
                    }
                    else
                    {
                        $html.AppendLine('<tr>') | Out-Null
                    }

                    $html.AppendLine("
                                <td>$($adUser.DisplayName)</td>
                                <td>$($adUser.SamAccountName)</td>
                                <td>$($adUser.EmailAddress)</td>
                                <td>$($adUser.Department)</td>
                                <td>$($adUser.Description)</td>
                                <td>$($adUser.Title)</td>
                                <td>$($adUser.UserPrincipalName)</td>
                                <td>$($adUser.PasswordNeverExpires)</td>
                                <td>$($adUser.WhenCreated)</td>
                                <td>$($adUser.Enabled)</td>
                                <td>$($adUser.LockedOut)</td>
                                <td>$($adUser.LastLogonDate)</td>
                            </tr>") | Out-Null
                    $count++
                }
                $fileName = 'ADUserReport_{0}.html' -f (Get-Date -Format 'yyyyMMdd')
                $FullPath = Join-Path -Path $FilePath -ChildPath $fileName
                $html.ToString() | Out-File -FilePath $FullPath
            }
        }
        catch
        {
            throw
        }
    }

    end
    {
        $timer.Stop()
        Write-Verbose -Message ('{0} : End execution' -f $cmdletName)
        Write-Verbose -Message ('Total execution time: {0} ms' -f $timer.Elapsed.TotalMilliseconds)
    }
}