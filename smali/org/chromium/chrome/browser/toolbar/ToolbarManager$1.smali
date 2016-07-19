.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$1;
.super Ljava/lang/Object;
.source "ToolbarManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

.field final synthetic val$activity:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$1;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$1;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getControlTopMargin()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$1;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mControlContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$000(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 176
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return v0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$1;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public setActionBarBackgroundVisibility(Z)V
    .locals 3

    .prologue
    .line 186
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 187
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$1;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    sget v2, Lorg/chromium/chrome/R$id;->action_bar_black_background:I

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/ChromeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    return-void

    .line 186
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setControlTopMargin(I)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$1;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mControlContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$000(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 168
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 169
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$1;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mControlContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$000(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-void
.end method
