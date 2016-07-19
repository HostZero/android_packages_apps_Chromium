.class public abstract Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;
.super Ljava/lang/Object;
.source "UserRecoverableErrorHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method


# virtual methods
.method protected handle(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public final handleError(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 66
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 67
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;->handle(Landroid/content/Context;I)V

    .line 68
    return-void
.end method
