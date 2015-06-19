<%@ Page Title="Game Calculator" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.Master" AutoEventWireup="true" CodeBehind="GameCalculator.aspx.cs" Inherits="GameCalculatorApp.GameCalculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <div class="container-fluid">
        <asp:Panel ID="GameInfoControlPanel" runat="server" BackColor="#403E7F">
            <div>
                <asp:Label ID="GameControlPanelLabel" runat="server" Text="GAME CALCULATOR" Font-Bold="True" Font-Size="Larger" ForeColor="White"></asp:Label>

            </div>
            <div>
                <asp:Label ID="InstructionsLabel" runat="server" Text="*All fields are required. *No ties or draws are allowed." BackColor="#FFFF66"></asp:Label>
            </div>
            <div class="row">

                <div class="col-xs-6 col-sm-3" id="Column1">
                    <div class="well">
                        <asp:Label ID="Game1Label" runat="server" Text="GAME 1" Font-Bold="True" ForeColor="#F96C07"></asp:Label>
                        <div class="form-group">
                            <asp:Label ID="ResultLabel1" class="control-label" runat="server" Text="Result:"></asp:Label>
                            <asp:RadioButtonList ID="ResultRadioButtonList1" runat="server" RepeatDirection="Horizontal" ToolTip="Please select a result option to continue." CellPadding="1" CellSpacing="1">
                                <asp:ListItem Value="1" Text="Win" Selected="False"></asp:ListItem>
                                <asp:ListItem Value="0" Text="Loss"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="A result option must be selected." CssClass="alert-danger" Display="Dynamic" Font-Bold="True" ControlToValidate="ResultRadioButtonList1"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="ScoreLabel1" class="control-label" runat="server" Text="Scored:"></asp:Label>
                            <asp:TextBox ID="ScoreTextBox1" runat="server" TextMode="Number" ToolTip="Please enter the number of points scored." CausesValidation="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="A valid score must be entered." ControlToValidate="ScoreTextBox1" CssClass="alert-danger" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="ScoreRangeValidator1" runat="server" ErrorMessage="The score number must be 0 or greater." ControlToValidate="ScoreTextBox1" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" MaximumValue="999999999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="AllowedLabel1" runat="server" Text="Allowed:"></asp:Label>
                            <asp:TextBox ID="AllowedTextBox1" runat="server" TextMode="Number" ToolTip="Please enter the number of points allowed." CausesValidation="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="A valid number for points allowed must be entered." ControlToValidate="AllowedTextBox1" CssClass="alert-danger" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="AllowedRangeValidator1" runat="server" ErrorMessage="The number for allowed points must be 0 or greater." ControlToValidate="AllowedTextBox1" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" MaximumValue="999999999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="No ties or draws: points scored/allowed cannot be the same number. " ControlToCompare="ScoreTextBox1" ControlToValidate="AllowedTextBox1" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" Operator="NotEqual" ValueToCompare="ScoreTextBox1"></asp:CompareValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="SpectatorLabel1" runat="server" Text="Spectators:"></asp:Label>
                            <asp:TextBox ID="SpectatorTextBox1" runat="server" TextMode="Number" ToolTip="Please enter the number of Spectators present at this game."></asp:TextBox>
                            <asp:RangeValidator ID="SpectatorRangeValidator1" runat="server" ErrorMessage="The number of spectators must be 0 or greater." ControlToValidate="SpectatorTextBox1" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" MaximumValue="999999999" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                        </div>
                    </div>
                    <!-- End of Well 1 -->
                </div>
                <!--End of Column 1 -->

                <div class="col-xs-6 col-sm-3" id="Column2">
                    <div class="well">
                        <asp:Label ID="Game2Label" runat="server" Text="GAME 2" Font-Bold="True" ForeColor="#F96C07"></asp:Label>
                        <div class="form-group">
                            <asp:Label ID="ResultLabel2" class="control-label" runat="server" Text="Result:"></asp:Label>
                            <asp:RadioButtonList ID="ResultRadioButtonList2" runat="server" RepeatDirection="Horizontal" ToolTip="Please select a result option to continue." CellPadding="1" CellSpacing="1">
                                <asp:ListItem Value="1" Text="Win" Selected="False"></asp:ListItem>
                                <asp:ListItem Value="0" Text="Loss"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="A result option must be selected." CssClass="alert-danger" Display="Dynamic" Font-Bold="True" ControlToValidate="ResultRadioButtonList2"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="ScoreLabel2" class="control-label" runat="server" Text="Scored:"></asp:Label>
                            <asp:TextBox ID="ScoreTextBox2" runat="server" TextMode="Number" ToolTip="Please enter the number of points scored." CausesValidation="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="A valid score must be entered." ControlToValidate="ScoreTextBox2" CssClass="alert-danger" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="The score number must be 0 or greater." ControlToValidate="ScoreTextBox2" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" MaximumValue="999999999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="AllowedLabel2" runat="server" Text="Allowed:"></asp:Label>
                            <asp:TextBox ID="AllowedTextBox2" runat="server" TextMode="Number" ToolTip="Please enter the number of points allowed." CausesValidation="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="A valid number for points allowed must be entered." ControlToValidate="AllowedTextBox2" CssClass="alert-danger" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="The number for allowed points must be 0 or greater." ControlToValidate="AllowedTextBox2" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" MaximumValue="999999999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="No ties or draws: points scored/allowed cannot be the same number. " ControlToCompare="ScoreTextBox2" ControlToValidate="AllowedTextBox2" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" Operator="NotEqual" ValueToCompare="ScoreTextBox1"></asp:CompareValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="SpectatorLabel2" runat="server" Text="Spectators:"></asp:Label>
                            <asp:TextBox ID="SpectatorTextBox2" runat="server" TextMode="Number" ToolTip="Please enter the number of Spectators present at this game."></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="The number of spectators must be 0 or greater." ControlToValidate="SpectatorTextBox2" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" MaximumValue="999999999" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                        </div>
                    </div>
                    <!-- End of Well 2 -->
                </div>
                <!--End of Column 2 -->

                <div class="col-xs-6 col-sm-3" id="Column3">
                    <div class="well">
                        <asp:Label ID="Game3Label" runat="server" Text="GAME 3" Font-Bold="True" ForeColor="#F96C07"></asp:Label>
                        <div class="form-group">
                            <asp:Label ID="ResultLabel3" class="control-label" runat="server" Text="Result:"></asp:Label>
                            <asp:RadioButtonList ID="ResultRadioButtonList3" runat="server" RepeatDirection="Horizontal" ToolTip="Please select a result option to continue." CellPadding="1" CellSpacing="1">
                                <asp:ListItem Value="1" Text="Win" Selected="False"></asp:ListItem>
                                <asp:ListItem Value="0" Text="Loss"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="A result option must be selected." CssClass="alert-danger" Display="Dynamic" Font-Bold="True" ControlToValidate="RadioButtonList3"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="ScoreLabel3" class="control-label" runat="server" Text="Scored:"></asp:Label>
                            <asp:TextBox ID="ScoreTextBox3" runat="server" TextMode="Number" ToolTip="Please enter the number of points scored." CausesValidation="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="A valid score must be entered." ControlToValidate="ScoreTextBox3" CssClass="alert-danger" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator4" runat="server" ErrorMessage="The score number must be 0 or greater." ControlToValidate="ScoreTextBox3" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" MaximumValue="999999999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="AllowedLabel3" runat="server" Text="Allowed:"></asp:Label>
                            <asp:TextBox ID="AllowedTextBox3" runat="server" TextMode="Number" ToolTip="Please enter the number of points allowed." CausesValidation="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="A valid number for points allowed must be entered." ControlToValidate="AllowedTextBox3" CssClass="alert-danger" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator5" runat="server" ErrorMessage="The number for allowed points must be 0 or greater." ControlToValidate="AllowedTextBox3" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" MaximumValue="999999999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                            <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="No ties or draws: points scored/allowed cannot be the same number. " ControlToCompare="ScoreTextBox3" ControlToValidate="AllowedTextBox3" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" Operator="NotEqual" ValueToCompare="ScoreTextBox3"></asp:CompareValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="SpectatorLabel3" runat="server" Text="Spectators:"></asp:Label>
                            <asp:TextBox ID="SpectatorTextBox3" runat="server" TextMode="Number" ToolTip="Please enter the number of Spectators present at this game."></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator6" runat="server" ErrorMessage="The number of spectators must be 0 or greater." ControlToValidate="SpectatorTextBox3" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" MaximumValue="999999999" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                        </div>
                    </div>
                    <!-- End of Well 3 -->
                </div>
                <!--End of Column 3 -->

                <div class="col-xs-6 col-sm-3" id="Column4">
                    <div class="well">
                        <asp:Label ID="Game4Label" runat="server" Text="GAME 4" Font-Bold="True" ForeColor="#F96C07"></asp:Label>
                        <div class="form-group">
                            <asp:Label ID="ResultLabel4" class="control-label" runat="server" Text="Result:"></asp:Label>
                            <asp:RadioButtonList ID="ResultRadioButtonList4" runat="server" RepeatDirection="Horizontal" ToolTip="Please select a result option to continue." CellPadding="1" CellSpacing="1">
                                <asp:ListItem Value="1" Text="Win" Selected="False"></asp:ListItem>
                                <asp:ListItem Value="0" Text="Loss"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="A result option must be selected." CssClass="alert-danger" Display="Dynamic" Font-Bold="True" ControlToValidate="ResultRadioButtonList4"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="ScoreLabel4" class="control-label" runat="server" Text="Scored:"></asp:Label>
                            <asp:TextBox ID="ScoreTextBox4" runat="server" TextMode="Number" ToolTip="Please enter the number of points scored." CausesValidation="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="A valid score must be entered." ControlToValidate="ScoreTextBox4" CssClass="alert-danger" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator7" runat="server" ErrorMessage="The score number must be 0 or greater." ControlToValidate="ScoreTextBox4" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" MaximumValue="999999999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="AllowedLabel4" runat="server" Text="Allowed:"></asp:Label>
                            <asp:TextBox ID="AllowedTextBox4" runat="server" TextMode="Number" ToolTip="Please enter the number of points allowed." CausesValidation="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="A valid number for points allowed must be entered." ControlToValidate="AllowedTextBox4" CssClass="alert-danger" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator8" runat="server" ErrorMessage="The number for allowed points must be 0 or greater." ControlToValidate="AllowedTextBox4" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" MaximumValue="999999999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                            <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="No ties or draws: points scored/allowed cannot be the same number. " ControlToCompare="ScoreTextBox4" ControlToValidate="AllowedTextBox4" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" Operator="NotEqual" ValueToCompare="ScoreTextBox4"></asp:CompareValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="SpectatorLabel4" runat="server" Text="Spectators:"></asp:Label>
                            <asp:TextBox ID="SpectatorTextBox4" runat="server" TextMode="Number" ToolTip="Please enter the number of Spectators present at this game."></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator9" runat="server" ErrorMessage="The number of spectators must be 0 or greater." ControlToValidate="SpectatorTextBox4" CssClass="alert-danger" Display="Dynamic" Font-Bold="True" MaximumValue="999999999" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                        </div>
                    </div>
                    <!-- End of Well 4-->
                </div>
                <!--End of Column 4 -->
            </div>
            <!-- End of Game row -->
        </asp:Panel>
        <!-- End of Game Control Panel -->

        <div class="row">
            <div class="container">
                <asp:Button ID="CalculateButton" runat="server" Text="Calculate Totals" CssClass="btn btn-success" Font-Bold="True" OnClick="CalculateButton_Click" />
            </div>
        </div>
        <!-- End of Button Row -->


        <asp:Panel ID="GamesSummaryPanel" runat="server" Visible="False" BackColor="#F96C07" ForeColor="#F96C07"> 
            <div class="container-fluid">       
            <div class="panel panel-default">
                <!-- Default panel contents -->
                <div class="panel-heading"><asp:Label ID="SummaryLabel" runat="server" Text="SUMMARY" Font-Bold="True" Font-Size="Larger" ForeColor="#F96C07"></asp:Label></div>

                <!-- Table -->
                <table class="table">
                    <thead>
                        <tr>
                            <th><asp:Label ID="GWLabel" runat="server" Text="GAMES WON:" Font-Bold="False" Font-Size="Medium" ForeColor="Black"></asp:Label></th>
                            <th><asp:Label ID="GLLabel" runat="server" Text="GAMES LOST:" Font-Bold="False" Font-Size="Medium" ForeColor="Black"></asp:Label></th>
                            <th><asp:Label ID="PercentLabel" runat="server" Text="WIN PERCENTAGE:" Font-Bold="False" Font-Size="Medium" ForeColor="Black"></asp:Label></th>
                            <th><asp:Label ID="ScoreTotalLabel" runat="server" Text="SCORED POINT-TOTAL:" Font-Bold="False" Font-Size="Medium" ForeColor="Black"></asp:Label></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><asp:TextBox ID="GWTextBox" runat="server" ReadOnly="True" TextMode="Number"></asp:TextBox></td>
                            <td><asp:TextBox ID="GLTextBox" runat="server" ReadOnly="True" TextMode="Number"></asp:TextBox></td>
                            <td><asp:TextBox ID="PercentTextBox" runat="server" ReadOnly="True" TextMode="Number"></asp:TextBox></td>
                            <td><asp:TextBox ID="ScoreTotalTextBox" runat="server" ReadOnly="True" TextMode="Number"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <th><asp:Label ID="AllowTotalLabel" runat="server" Text="ALLOWED POINT-TOTAL:" Font-Bold="False" Font-Size="Medium" ForeColor="Black"></asp:Label></th>
                            <th><asp:Label ID="DifferLabel" runat="server" Text="POINT DIFFERENTIAL:" Font-Bold="False" Font-Size="Medium" ForeColor="Black"></asp:Label></th>
                            <th><asp:Label ID="SpecTotalLabel" runat="server" Text="SPECTATOR TOTAL:" Font-Bold="False" Font-Size="Medium" ForeColor="Black"></asp:Label></th>
                            <th><asp:Label ID="SpecAVGLabel" runat="server" Text="SPECTATOR AVERAGE:" Font-Bold="False" Font-Size="Medium" ForeColor="Black"></asp:Label></th>
                        </tr>
                        <tr>
                            <td><asp:TextBox ID="AllowTotalTextBox" runat="server" ReadOnly="True" TextMode="Number"></asp:TextBox></td>
                            <td><asp:TextBox ID="DifferTextBox" runat="server" ReadOnly="True" TextMode="Number"></asp:TextBox></td>
                            <td><asp:TextBox ID="SpecTotalTextBox" runat="server" ReadOnly="True" TextMode="Number"></asp:TextBox></td>
                            <td><asp:TextBox ID="SpecAVGTextBox" runat="server" ReadOnly="True" TextMode="Number"></asp:TextBox></td>
                        </tr>
                    </tbody>
                </table>
            </div>
                </div> 
    </asp:Panel>
        <!-- End of Games Summary Panel -->
    </div>
    <!-- End of Container-fluid -->
</asp:Content>
