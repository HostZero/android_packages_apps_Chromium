.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$2;
.super Ljava/lang/Object;
.source "ToolbarManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/toolbar/ToolbarManager$MenuDelegatePhone;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

.field final synthetic val$menuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$2;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$2;->val$menuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateReloadButtonState(Z)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$2;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mAppMenuPropertiesDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$100(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$2;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mAppMenuPropertiesDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$100(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;->loadingStateChanged(Z)V

    .line 210
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$2;->val$menuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    sget v1, Lorg/chromium/chrome/R$id;->icon_row_menu_id:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->menuItemContentChanged(I)V

    .line 212
    :cond_0
    return-void
.end method
