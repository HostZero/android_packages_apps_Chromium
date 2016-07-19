.class Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout$1;
.super Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;
.source "ContextualSearchLayout.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTabListBackgroundColor(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->access$000(Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    const/4 v0, -0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBasePageBackgroundColor()I

    move-result v0

    goto :goto_0
.end method
