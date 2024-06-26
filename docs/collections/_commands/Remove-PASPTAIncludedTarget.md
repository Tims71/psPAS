---
category: PSPAS
external help file: psPAS-help.xml
Module Name: psPAS
online version: https://pspas.pspete.dev/commands/Remove-PASPTAIncludedTarget
schema: 2.0.0
title: Remove-PASPTAIncludedTarget
---

# Remove-PASPTAIncludedTarget

## SYNOPSIS
Remove PTA included target

## SYNTAX

```
Remove-PASPTAIncludedTarget [-ID] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Remove configured included target from PTA

## EXAMPLES

### EXAMPLE 1
```powershell
Remove-PASPTAIncludedTarget -ID 65b6aa31721d9b5f3a56ca7e
```

Removes included target matching ID

## PARAMETERS

### -ID
The ID of the target to remove

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://pspas.pspete.dev/commands/Remove-PASPTAIncludedTarget](https://pspas.pspete.dev/commands/Remove-PASPTAIncludedTarget)

[https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/DeleteSecurity.htm](https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/DeleteSecurity.htm)
