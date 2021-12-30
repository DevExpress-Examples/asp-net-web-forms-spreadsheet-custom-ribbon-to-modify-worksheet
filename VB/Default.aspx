﻿<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxSpreadsheet.v19.2, Version=19.2.13.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxSpreadsheet" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.13.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxSpreadsheet ID="ASPxSpreadsheet1" OnCallback="ASPxSpreadsheet1_Callback" ClientInstanceName="spreadSheet" runat="server" WorkDirectory="~/WorkDirectory">
                <RibbonTabs>
                    <dx:RibbonTab Name="Custom" Text="Custom">
                        <Groups>
                            <dx:RibbonGroup Name="CustomGroup" Text="CustomGroup">
                                <Items>
                                    <dx:RibbonTemplateItem>
                                        <Template>
                                            <dx:ASPxButton runat="server" ID="btn1" RenderMode="Link" Text="Populate cells" AutoPostBack="false">
                                                <ClientSideEvents Click="function(s,e){ spreadSheet.PerformCallback('custom'); }" />
                                            </dx:ASPxButton>
                                        </Template>
                                    </dx:RibbonTemplateItem>
                                </Items>
                            </dx:RibbonGroup>
                        </Groups>
                    </dx:RibbonTab>
                    <dx:SRFileTab>
                        <Groups>
                            <dx:SRFileCommonGroup>
                                <Items>
                                    <dx:RibbonTemplateItem>
                                        <Template>
                                            <dx:ASPxButton runat="server" ID="btn2"  RenderMode="Link" Text="Clear cells" AutoPostBack="false">
                                                <ClientSideEvents Click="function(s,e){ spreadSheet.PerformCallback('clear'); }" />
                                            </dx:ASPxButton>
                                        </Template>
                                    </dx:RibbonTemplateItem>
                                    <dx:SRFileNewCommand>
                                    </dx:SRFileNewCommand>
                                    <dx:SRFileOpenCommand>
                                    </dx:SRFileOpenCommand>
                                    <dx:SRFileSaveCommand>
                                    </dx:SRFileSaveCommand>
                                    <dx:SRFileSaveAsCommand>
                                    </dx:SRFileSaveAsCommand>
                                    <dx:SRFilePrintCommand>
                                    </dx:SRFilePrintCommand>
                                </Items>
                            </dx:SRFileCommonGroup>
                        </Groups>
                    </dx:SRFileTab>
                    <dx:SRHomeTab>
                        <Groups>
                            <dx:SRUndoGroup>
                                <Items>
                                    <dx:SRFileUndoCommand>
                                    </dx:SRFileUndoCommand>
                                    <dx:SRFileRedoCommand>
                                    </dx:SRFileRedoCommand>
                                </Items>
                            </dx:SRUndoGroup>
                            <dx:SRClipboardGroup>
                                <Items>
                                    <dx:SRPasteSelectionCommand>
                                    </dx:SRPasteSelectionCommand>
                                    <dx:SRCutSelectionCommand>
                                    </dx:SRCutSelectionCommand>
                                    <dx:SRCopySelectionCommand>
                                    </dx:SRCopySelectionCommand>
                                </Items>
                            </dx:SRClipboardGroup>
                            <dx:SRFontGroup>
                                <Items>
                                    <dx:SRFormatFontNameCommand>
                                        <PropertiesComboBox NullText="(Font Name)">
                                        </PropertiesComboBox>
                                    </dx:SRFormatFontNameCommand>
                                    <dx:SRFormatFontSizeCommand>
                                        <PropertiesComboBox DropDownStyle="DropDown" NullText="(Font Size)">
                                        </PropertiesComboBox>
                                    </dx:SRFormatFontSizeCommand>
                                    <dx:SRFormatIncreaseFontSizeCommand>
                                    </dx:SRFormatIncreaseFontSizeCommand>
                                    <dx:SRFormatDecreaseFontSizeCommand>
                                    </dx:SRFormatDecreaseFontSizeCommand>
                                    <dx:SRFormatFontBoldCommand>
                                    </dx:SRFormatFontBoldCommand>
                                    <dx:SRFormatFontItalicCommand>
                                    </dx:SRFormatFontItalicCommand>
                                    <dx:SRFormatFontUnderlineCommand>
                                    </dx:SRFormatFontUnderlineCommand>
                                    <dx:SRFormatFontStrikeoutCommand>
                                    </dx:SRFormatFontStrikeoutCommand>
                                    <dx:SRFormatBordersCommand>
                                    </dx:SRFormatBordersCommand>
                                    <dx:SRFormatFillColorCommand AutomaticColor="" AutomaticColorItemCaption="No Fill" AutomaticColorItemValue="16777215" EnableAutomaticColorItem="True">
                                    </dx:SRFormatFillColorCommand>
                                    <dx:SRFormatFontColorCommand AutomaticColorItemCaption="Automatic" AutomaticColorItemValue="0" EnableAutomaticColorItem="True">
                                    </dx:SRFormatFontColorCommand>
                                    <dx:SRFormatBorderLineColorCommand AutomaticColorItemCaption="Automatic" AutomaticColorItemValue="0" EnableAutomaticColorItem="True">
                                    </dx:SRFormatBorderLineColorCommand>
                                </Items>
                            </dx:SRFontGroup>
                            <dx:SRAlignmentGroup>
                                <Items>
                                    <dx:SRFormatAlignmentTopCommand>
                                    </dx:SRFormatAlignmentTopCommand>
                                    <dx:SRFormatAlignmentMiddleCommand>
                                    </dx:SRFormatAlignmentMiddleCommand>
                                    <dx:SRFormatAlignmentBottomCommand>
                                    </dx:SRFormatAlignmentBottomCommand>
                                    <dx:SRFormatAlignmentLeftCommand>
                                    </dx:SRFormatAlignmentLeftCommand>
                                    <dx:SRFormatAlignmentCenterCommand>
                                    </dx:SRFormatAlignmentCenterCommand>
                                    <dx:SRFormatAlignmentRightCommand>
                                    </dx:SRFormatAlignmentRightCommand>
                                    <dx:SRFormatDecreaseIndentCommand>
                                    </dx:SRFormatDecreaseIndentCommand>
                                    <dx:SRFormatIncreaseIndentCommand>
                                    </dx:SRFormatIncreaseIndentCommand>
                                    <dx:SRFormatWrapTextCommand>
                                    </dx:SRFormatWrapTextCommand>
                                    <dx:SREditingMergeCellsGroupCommand>
                                    </dx:SREditingMergeCellsGroupCommand>
                                </Items>
                            </dx:SRAlignmentGroup>
                            <dx:SRNumberGroup ShowDialogBoxLauncher="True">
                                <Items>
                                    <dx:SRFormatNumberAccountingCommand>
                                    </dx:SRFormatNumberAccountingCommand>
                                    <dx:SRFormatNumberPercentCommand>
                                    </dx:SRFormatNumberPercentCommand>
                                    <dx:SRFormatNumberCommaStyleCommand>
                                    </dx:SRFormatNumberCommaStyleCommand>
                                    <dx:SRFormatNumberIncreaseDecimalCommand>
                                    </dx:SRFormatNumberIncreaseDecimalCommand>
                                    <dx:SRFormatNumberDecreaseDecimalCommand>
                                    </dx:SRFormatNumberDecreaseDecimalCommand>
                                </Items>
                            </dx:SRNumberGroup>
                            <dx:SRCellsGroup>
                                <Items>
                                    <dx:SRFormatInsertCommand>
                                    </dx:SRFormatInsertCommand>
                                    <dx:SRFormatRemoveCommand>
                                    </dx:SRFormatRemoveCommand>
                                    <dx:SRFormatFormatCommand>
                                    </dx:SRFormatFormatCommand>
                                </Items>
                            </dx:SRCellsGroup>
                            <dx:SREditingGroup>
                                <Items>
                                    <dx:SRFormatAutoSumCommand>
                                    </dx:SRFormatAutoSumCommand>
                                    <dx:SRFormatFillCommand>
                                    </dx:SRFormatFillCommand>
                                    <dx:SRFormatClearCommand>
                                    </dx:SRFormatClearCommand>
                                    <dx:SREditingSortAndFilterCommand>
                                    </dx:SREditingSortAndFilterCommand>
                                    <dx:SREditingFindAndSelectCommand>
                                    </dx:SREditingFindAndSelectCommand>
                                </Items>
                            </dx:SREditingGroup>
                            <dx:SRStylesGroup>
                                <Items>
                                    <dx:SRFormatAsTableCommand>
                                    </dx:SRFormatAsTableCommand>
                                </Items>
                            </dx:SRStylesGroup>
                        </Groups>
                    </dx:SRHomeTab>
                    <dx:SRInsertTab>
                        <Groups>
                            <dx:SRTablesGroup>
                                <Items>
                                    <dx:SRInsertTableCommand>
                                    </dx:SRInsertTableCommand>
                                </Items>
                            </dx:SRTablesGroup>
                            <dx:SRIllustrationsGroup>
                                <Items>
                                    <dx:SRFormatInsertPictureCommand>
                                    </dx:SRFormatInsertPictureCommand>
                                </Items>
                            </dx:SRIllustrationsGroup>
                            <dx:SRChartsGroup>
                                <Items>
                                    <dx:SRInsertChartColumnCommand>
                                    </dx:SRInsertChartColumnCommand>
                                    <dx:SRInsertChartLinesCommand>
                                    </dx:SRInsertChartLinesCommand>
                                    <dx:SRInsertChartPiesCommand>
                                    </dx:SRInsertChartPiesCommand>
                                    <dx:SRInsertChartBarsCommand>
                                    </dx:SRInsertChartBarsCommand>
                                    <dx:SRInsertChartAreasCommand>
                                    </dx:SRInsertChartAreasCommand>
                                    <dx:SRInsertChartScattersCommand>
                                    </dx:SRInsertChartScattersCommand>
                                    <dx:SRInsertChartOthersCommand>
                                    </dx:SRInsertChartOthersCommand>
                                </Items>
                            </dx:SRChartsGroup>
                            <dx:SRLinksGroup>
                                <Items>
                                    <dx:SRFormatInsertHyperlinkCommand>
                                    </dx:SRFormatInsertHyperlinkCommand>
                                </Items>
                            </dx:SRLinksGroup>
                        </Groups>
                    </dx:SRInsertTab>
                    <dx:SRPageLayoutTab>
                        <Groups>
                            <dx:SRPageSetupGroup ShowDialogBoxLauncher="True">
                                <Items>
                                    <dx:SRPageSetupMarginsCommand>
                                    </dx:SRPageSetupMarginsCommand>
                                    <dx:SRPageSetupOrientationCommand>
                                    </dx:SRPageSetupOrientationCommand>
                                    <dx:SRPageSetupPaperKindCommand>
                                    </dx:SRPageSetupPaperKindCommand>
                                </Items>
                            </dx:SRPageSetupGroup>
                            <dx:SRPrintGroup ShowDialogBoxLauncher="True">
                                <Items>
                                    <dx:SRPrintGridlinesCommand>
                                    </dx:SRPrintGridlinesCommand>
                                    <dx:SRPrintHeadingsCommand>
                                    </dx:SRPrintHeadingsCommand>
                                </Items>
                            </dx:SRPrintGroup>
                        </Groups>
                    </dx:SRPageLayoutTab>
                    <dx:SRFormulasTab>
                        <Groups>
                            <dx:SRFunctionLibraryGroup>
                                <Items>
                                    <dx:SRFunctionsAutoSumCommand>
                                    </dx:SRFunctionsAutoSumCommand>
                                    <dx:SRFunctionsFinancialCommand>
                                    </dx:SRFunctionsFinancialCommand>
                                    <dx:SRFunctionsLogicalCommand>
                                    </dx:SRFunctionsLogicalCommand>
                                    <dx:SRFunctionsTextCommand>
                                    </dx:SRFunctionsTextCommand>
                                    <dx:SRFunctionsDateAndTimeCommand>
                                    </dx:SRFunctionsDateAndTimeCommand>
                                    <dx:SRFunctionsLookupAndReferenceCommand>
                                    </dx:SRFunctionsLookupAndReferenceCommand>
                                    <dx:SRFunctionsMathAndTrigonometryCommand>
                                    </dx:SRFunctionsMathAndTrigonometryCommand>
                                    <dx:SRFunctionsMoreCommand>
                                    </dx:SRFunctionsMoreCommand>
                                </Items>
                            </dx:SRFunctionLibraryGroup>
                            <dx:SRCalculationGroup>
                                <Items>
                                    <dx:SRFunctionsCalculationOptionCommand>
                                    </dx:SRFunctionsCalculationOptionCommand>
                                    <dx:SRFunctionsCalculateNowCommand>
                                    </dx:SRFunctionsCalculateNowCommand>
                                    <dx:SRFunctionsCalculateSheetCommand>
                                    </dx:SRFunctionsCalculateSheetCommand>
                                </Items>
                            </dx:SRCalculationGroup>
                        </Groups>
                    </dx:SRFormulasTab>
                    <dx:SRDataTab>
                        <Groups>
                            <dx:SRDataSortAndFilterGroup>
                                <Items>
                                    <dx:SRDataSortAscendingCommand>
                                    </dx:SRDataSortAscendingCommand>
                                    <dx:SRDataSortDescendingCommand>
                                    </dx:SRDataSortDescendingCommand>
                                    <dx:SRDataFilterToggleCommand ShowText="True">
                                    </dx:SRDataFilterToggleCommand>
                                    <dx:SRDataFilterClearCommand>
                                    </dx:SRDataFilterClearCommand>
                                    <dx:SRDataFilterReApplyCommand>
                                    </dx:SRDataFilterReApplyCommand>
                                </Items>
                            </dx:SRDataSortAndFilterGroup>
                            <dx:SRDataToolsGroup>
                                <Items>
                                    <dx:SRDataToolsDataValidationGroupCommand>
                                    </dx:SRDataToolsDataValidationGroupCommand>
                                </Items>
                            </dx:SRDataToolsGroup>
                        </Groups>
                    </dx:SRDataTab>
                    <dx:SRReviewTab>
                        <Groups>
                            <dx:SRCommentsGroup>
                                <Items>
                                    <dx:SRInsertCommentCommand>
                                    </dx:SRInsertCommentCommand>
                                    <dx:SREditCommentCommand>
                                    </dx:SREditCommentCommand>
                                    <dx:SRDeleteCommentCommand>
                                    </dx:SRDeleteCommentCommand>
                                    <dx:SRShowHideCommentCommand>
                                    </dx:SRShowHideCommentCommand>
                                </Items>
                            </dx:SRCommentsGroup>
                        </Groups>
                    </dx:SRReviewTab>
                    <dx:SRViewTab>
                        <Groups>
                            <dx:SRShowGroup>
                                <Items>
                                    <dx:SRViewShowGridlinesCommand>
                                    </dx:SRViewShowGridlinesCommand>
                                    <dx:SRViewShowHeadingsCommand>
                                    </dx:SRViewShowHeadingsCommand>
                                </Items>
                            </dx:SRShowGroup>
                            <dx:SRViewGroup>
                                <Items>
                                    <dx:SRFullScreenCommand>
                                    </dx:SRFullScreenCommand>
                                </Items>
                            </dx:SRViewGroup>
                            <dx:SRWindowGroup>
                                <Items>
                                    <dx:SRViewFreezePanesGroupCommand>
                                    </dx:SRViewFreezePanesGroupCommand>
                                </Items>
                            </dx:SRWindowGroup>
                        </Groups>
                    </dx:SRViewTab>
                </RibbonTabs>
            </dx:ASPxSpreadsheet>
        </div>
    </form>
</body>
</html>