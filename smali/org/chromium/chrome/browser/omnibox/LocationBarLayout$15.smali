.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$15;
.super Ljava/lang/Object;
.source "LocationBarLayout.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V
    .locals 0

    .prologue
    .line 2325
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$15;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 2329
    array-length v0, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2336
    :goto_0
    return-void

    .line 2331
    :cond_0
    const/4 v0, 0x0

    aget v0, p2, v0

    if-nez v0, :cond_1

    .line 2332
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$15;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->startVoiceRecognition()V

    goto :goto_0

    .line 2334
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$15;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateMicButtonState()V

    goto :goto_0
.end method
