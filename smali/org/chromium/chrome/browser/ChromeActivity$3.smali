.class Lorg/chromium/chrome/browser/ChromeActivity$3;
.super Ljava/lang/Object;
.source "ChromeActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/appmenu/AppMenuObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity$3;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuVisibilityChanged(Z)V
    .locals 2

    .prologue
    .line 386
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$3;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->isInOverviewMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$3;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->access$100(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->getToolbar()Lorg/chromium/chrome/browser/toolbar/Toolbar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/Toolbar;->isShowingAppMenuUpdateBadge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$3;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->access$100(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->getToolbar()Lorg/chromium/chrome/browser/toolbar/Toolbar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/toolbar/Toolbar;->removeAppMenuUpdateBadge(Z)V

    .line 390
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$3;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->access$200(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->requestRender()V

    .line 393
    :cond_0
    if-nez p1, :cond_1

    .line 394
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$3;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuPropertiesDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->access$300(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->onMenuDismissed()V

    .line 395
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$3;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->access$400(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->getAppMenu()Lorg/chromium/chrome/browser/appmenu/AppMenu;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->update_menu_id:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    invoke-static {}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getInstance()Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->onMenuDismissed()V

    .line 401
    :cond_1
    return-void
.end method
