
$sb = {
    $NewVMParam = @{
        Name = 'SSFS03'
        MemoryStartUpBytes = 1GB
        Path = "C:\ProgramData\Microsoft\Windows\Hyper-V"
        SwitchName =  "Internal"
        NewVHDPath =  "C:\Users\Public\Documents\Hyper-V\Virtual  Hard Disks\MS01B.vhdx"
        NewVHDSizeBytes =  40GB 
        ErrorAction =  'Stop'
        Verbose =  $True
    }
    $VM = New-VM @NewVMParam 
}

Invoke-command -ComputerName Orion -ScriptBlock $sb
