.class public Lorg/chromium/chrome/browser/sessions/SessionTabHelper;
.super Ljava/lang/Object;
.source "SessionTabHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeIdForTab(Lorg/chromium/content_public/browser/WebContents;)I
.end method

.method public static sessionIdForTab(Lorg/chromium/content_public/browser/WebContents;)I
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lorg/chromium/chrome/browser/sessions/SessionTabHelper;->nativeIdForTab(Lorg/chromium/content_public/browser/WebContents;)I

    move-result v0

    return v0
.end method
