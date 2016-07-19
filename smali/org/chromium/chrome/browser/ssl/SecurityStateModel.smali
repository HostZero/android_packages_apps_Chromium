.class public Lorg/chromium/chrome/browser/ssl/SecurityStateModel;
.super Ljava/lang/Object;
.source "SecurityStateModel.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecurityLevelForWebContents(Lorg/chromium/content_public/browser/WebContents;)I
    .locals 1

    .prologue
    .line 23
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/ssl/SecurityStateModel;->nativeGetSecurityLevelForWebContents(Lorg/chromium/content_public/browser/WebContents;)I

    move-result v0

    goto :goto_0
.end method

.method public static isDeprecatedSHA1Present(Lorg/chromium/content_public/browser/WebContents;)Z
    .locals 1

    .prologue
    .line 32
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/ssl/SecurityStateModel;->nativeIsDeprecatedSHA1Present(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPassiveMixedContentPresent(Lorg/chromium/content_public/browser/WebContents;)Z
    .locals 1

    .prologue
    .line 41
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/ssl/SecurityStateModel;->nativeIsPassiveMixedContentPresent(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    goto :goto_0
.end method

.method private static native nativeGetSecurityLevelForWebContents(Lorg/chromium/content_public/browser/WebContents;)I
.end method

.method private static native nativeIsDeprecatedSHA1Present(Lorg/chromium/content_public/browser/WebContents;)Z
.end method

.method private static native nativeIsPassiveMixedContentPresent(Lorg/chromium/content_public/browser/WebContents;)Z
.end method
