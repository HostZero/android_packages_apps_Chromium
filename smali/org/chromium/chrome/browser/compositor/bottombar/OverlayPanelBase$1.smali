.class Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase$1;
.super Ljava/lang/Object;
.source "OverlayPanelBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;)V
    .locals 0

    .prologue
    .line 1378
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1381
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->mContext:Landroid/content/Context;

    const-class v1, Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->launchSettingsPage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1383
    return-void
.end method
