.class public Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;
.super Ljava/lang/Object;
.source "ExternalPrerenderHandler.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private mNativeExternalPrerenderHandler:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;->mNativeExternalPrerenderHandler:J

    .line 23
    return-void
.end method

.method public static hasPrerenderedAndFinishedLoadingUrl(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)Z
    .locals 1

    .prologue
    .line 98
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;->nativeHasPrerenderedAndFinishedLoadingUrl(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    return v0
.end method

.method public static hasPrerenderedUrl(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)Z
    .locals 1

    .prologue
    .line 84
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;->nativeHasPrerenderedUrl(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    return v0
.end method

.method private static native nativeAddPrerender(JLorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;II)Z
.end method

.method private static native nativeCancelCurrentPrerender(J)V
.end method

.method private static native nativeHasPrerenderedAndFinishedLoadingUrl(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)Z
.end method

.method private static native nativeHasPrerenderedUrl(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)Z
.end method

.method private static native nativeInit()J
.end method


# virtual methods
.method public addPrerender(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Ljava/lang/String;II)Lorg/chromium/content_public/browser/WebContents;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-static {v0, v0}, Lorg/chromium/chrome/browser/WebContentsFactory;->createWebContents(ZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 42
    invoke-virtual/range {v0 .. v6}, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;->addPrerender(Lorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-object v2

    .line 45
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->destroy()V

    .line 46
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addPrerender(Lorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;->mNativeExternalPrerenderHandler:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;->nativeAddPrerender(JLorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public cancelCurrentPrerender()V
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;->mNativeExternalPrerenderHandler:J

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;->nativeCancelCurrentPrerender(J)V

    .line 72
    return-void
.end method
