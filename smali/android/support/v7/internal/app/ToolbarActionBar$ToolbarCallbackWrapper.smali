.class Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;
.super Landroid/support/v7/internal/view/j;
.source "ToolbarActionBar.java"


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/app/ToolbarActionBar;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/app/ToolbarActionBar;Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroid/support/v7/internal/app/ToolbarActionBar;

    .line 550
    invoke-direct {p0, p2}, Landroid/support/v7/internal/view/j;-><init>(Landroid/view/Window$Callback;)V

    .line 551
    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 565
    packed-switch p1, :pswitch_data_0

    .line 573
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/j;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 567
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroid/support/v7/internal/app/ToolbarActionBar;

    invoke-static {v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->c(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/support/v7/internal/widget/v;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->q()Landroid/view/Menu;

    move-result-object v0

    .line 568
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroid/support/v7/internal/app/ToolbarActionBar;

    invoke-static {v1, v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->a(Landroid/support/v7/internal/app/ToolbarActionBar;Landroid/view/Menu;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 555
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/internal/view/j;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 556
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroid/support/v7/internal/app/ToolbarActionBar;

    invoke-static {v1}, Landroid/support/v7/internal/app/ToolbarActionBar;->b(Landroid/support/v7/internal/app/ToolbarActionBar;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroid/support/v7/internal/app/ToolbarActionBar;

    invoke-static {v1}, Landroid/support/v7/internal/app/ToolbarActionBar;->c(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/support/v7/internal/widget/v;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v7/internal/widget/v;->l()V

    .line 558
    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroid/support/v7/internal/app/ToolbarActionBar;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/support/v7/internal/app/ToolbarActionBar;->a(Landroid/support/v7/internal/app/ToolbarActionBar;Z)Z

    .line 560
    :cond_0
    return v0
.end method
