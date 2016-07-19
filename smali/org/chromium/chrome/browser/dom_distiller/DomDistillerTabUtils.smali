.class public Lorg/chromium/chrome/browser/dom_distiller/DomDistillerTabUtils;
.super Ljava/lang/Object;
.source "DomDistillerTabUtils.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static distillAndView(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .prologue
    .line 40
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerTabUtils;->nativeDistillAndView(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/WebContents;)V

    .line 41
    return-void
.end method

.method public static getFormattedUrlFromOriginalDistillerUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerTabUtils;->nativeGetFormattedUrlFromOriginalDistillerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDistillerHeuristicsEnabled()Z
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerTabUtils;->nativeIsDistillerHeuristicsEnabled()Z

    move-result v0

    return v0
.end method

.method private static native nativeDistillAndView(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/WebContents;)V
.end method

.method private static native nativeDistillCurrentPageAndView(Lorg/chromium/content_public/browser/WebContents;)V
.end method

.method private static native nativeGetFormattedUrlFromOriginalDistillerUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeIsDistillerHeuristicsEnabled()Z
.end method
