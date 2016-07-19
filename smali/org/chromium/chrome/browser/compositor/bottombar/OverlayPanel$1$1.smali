.class Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1$1;
.super Ljava/lang/Object;
.source "OverlayPanel.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentVideoViewEmbedder;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1$1;->this$1:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterFullscreenVideo(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public exitFullscreenVideo()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSystemUiVisibility(Z)V
    .locals 0

    .prologue
    .line 369
    return-void
.end method
