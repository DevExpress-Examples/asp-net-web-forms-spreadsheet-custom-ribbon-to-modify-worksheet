<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/134059977/19.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T622138)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
# ASPxSpreadsheet - How to add a custom ribbon button and modify an active worksheet on its click
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t622138/)**
<!-- run online end -->

***Note***

In version **19.2**, we renamed our **Range** interface to **CellRange** - see the following BC for details: [The DevExpress.Spreadsheet.Range interface has been renamed to DevExpress.Spreadsheet.CellRange](https://supportcenter.devexpress.com/ticket/details/bc5125).

The sample illustrates how to add some values to Spreadsheet cells and clear them when a custom button is clicked. <br>Steps to implement such a sample are the following: <br><br>1. Invoke the ASPxSpreadsheet designer and click the "Create Default Tabs" button. This will lead to creating default ribbon items in your markup<br><img src="https://raw.githubusercontent.com/DevExpress-Examples/aspxspreadsheet-how-to-add-a-custom-ribbon-button-and-modify-an-active-worksheet-on-its-cl-t622138/17.1.3+/media/a8995a01-5df9-4321-89b6-46210252072c.png"><br>2. Add a custom tab, group and implement your own RibbonTemplateItem with a button. Or add a ribbon item template to the existent group. In the client side event of the button, call the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxSpreadsheetScriptsASPxClientSpreadsheet_PerformCallbacktopic">ASPxClientSpreadsheet.PerformCallback</a> method to initiate a server request: <br>


```aspx
<dx:ASPxSpreadsheet ID="ASPxSpreadsheet1" OnCallback="ASPxSpreadsheet1_Callback" ClientInstanceName="spreadSheet" runat="server" WorkDirectory="~/WorkDirectory">
    <RibbonTabs>
        <dx:RibbonTab Name="Custom" Text="Custom">
            <Groups >
                <dx:RibbonGroup Name="CustomGroup" Text="CustomGroup">                            
                    <Items>                                
                        <dx:RibbonTemplateItem >                                                                                               
                            <Template>                                       
                                <dx:ASPxButton runat="server" ID="btn1"  RenderMode="Link" Text="Send a callback" AutoPostBack="false">
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
                                                ...
					</Items>
				</dx:SRFileCommonGroup>
			</Groups>
	    </dx:SRFileTab>		
		....
	</RibbonTabs>
</ASPxSpreadsheet>
```


2. Implement a logic to handle this request in the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxSpreadsheetASPxSpreadsheet_Callbacktopic">ASPxSpreadsheet.Callback</a> event handler: <br>


```cs
protected void ASPxSpreadsheet1_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e) {
    ASPxSpreadsheet ss = sender as ASPxSpreadsheet;
    Worksheet worksheet = ss.Document.Worksheets.ActiveWorksheet;
    if(e.Parameter == "custom") {
        PrepareTitleRange(worksheet);
        PrepareHeaderCells(worksheet);
        InitializeDataCellsValues(worksheet);
    }
    if(e.Parameter == "clear") {
        worksheet.Clear(worksheet.GetUsedRange());
    }
}
```



<br/>


