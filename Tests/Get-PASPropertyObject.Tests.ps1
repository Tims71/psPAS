Describe $($PSCommandPath -Replace '.Tests.ps1') {

    BeforeAll {
        #Get Current Directory
        $Here = Split-Path -Parent $PSCommandPath

        #Assume ModuleName from Repository Root folder
        $ModuleName = Split-Path (Split-Path $Here -Parent) -Leaf

        #Resolve Path to Module Directory
        $ModulePath = Resolve-Path "$Here\..\$ModuleName"

        #Define Path to Module Manifest
        $ManifestPath = Join-Path "$ModulePath" "$ModuleName.psd1"

        if ( -not (Get-Module -Name $ModuleName -All)) {

            Import-Module -Name "$ManifestPath" -ArgumentList $true -Force -ErrorAction Stop

        }

        $Script:RequestBody = $null
        $psPASSession = [ordered]@{
            BaseURI            = 'https://SomeURL/SomeApp'
            User               = $null
            ExternalVersion    = [System.Version]'0.0'
            WebSession         = New-Object Microsoft.PowerShell.Commands.WebRequestSession
            StartTime          = $null
            ElapsedTime        = $null
            LastCommand        = $null
            LastCommandTime    = $null
            LastCommandResults = $null
        }

        New-Variable -Name psPASSession -Value $psPASSession -Scope Script -Force

    }


    AfterAll {

        $Script:RequestBody = $null

    }

    InModuleScope $(Split-Path (Split-Path (Split-Path -Parent $PSCommandPath) -Parent) -Leaf ) {

        Context	'General Tests' {
            BeforeEach {

                $object = [PSCustomObject]@{

                    Prop1 = 'testvalue1'
                    Nest1 = [PSCustomObject]@{nestedproperty1 = 'nested value1' }
                    Prop2 = 'testvalue2'
                    Nest2 = [PSCustomObject]@{nestedproperty2 = 'nested value2' }
                    Nest3 = [PSCustomObject]@{nestedproperty3 = 'nested value3' }

                }

                $ReturnData = $object | Get-PASPropertyObject
            }

            It 'returns a expected number of properties' {

                $ReturnData.Length | Should -Be 5

            }

        }
    }
}