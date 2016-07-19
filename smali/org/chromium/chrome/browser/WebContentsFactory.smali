.class public abstract Lorg/chromium/chrome/browser/WebContentsFactory;
.super Ljava/lang/Object;
.source "WebContentsFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static createWebContents(ZZ)Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 26
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/WebContentsFactory;->nativeCreateWebContents(ZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeCreateWebContents(ZZ)Lorg/chromium/content_public/browser/WebContents;
.end method
