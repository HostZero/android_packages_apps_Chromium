.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$3;
.super Ljava/lang/Object;
.source "ToolbarManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager$HomepageStateListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomepageStateUpdated()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->isHomepageEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onHomeButtonUpdate(Z)V

    .line 236
    return-void
.end method
