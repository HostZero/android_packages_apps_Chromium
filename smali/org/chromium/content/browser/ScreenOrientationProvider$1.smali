.class final Lorg/chromium/content/browser/ScreenOrientationProvider$1;
.super Ljava/lang/Object;
.source "ScreenOrientationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lorg/chromium/content/browser/ScreenOrientationListener;->getInstance()Lorg/chromium/content/browser/ScreenOrientationListener;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ScreenOrientationListener;->startAccurateListening()V

    .line 118
    return-void
.end method
