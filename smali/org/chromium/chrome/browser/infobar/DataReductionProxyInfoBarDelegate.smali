.class public Lorg/chromium/chrome/browser/infobar/DataReductionProxyInfoBarDelegate;
.super Ljava/lang/Object;
.source "DataReductionProxyInfoBarDelegate.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static create()Lorg/chromium/chrome/browser/infobar/DataReductionProxyInfoBarDelegate;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/chromium/chrome/browser/infobar/DataReductionProxyInfoBarDelegate;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/infobar/DataReductionProxyInfoBarDelegate;-><init>()V

    return-object v0
.end method

.method static launch(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/infobar/DataReductionProxyInfoBarDelegate;->nativeLaunch(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private static native nativeLaunch(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;)V
.end method


# virtual methods
.method showDataReductionProxyInfoBar(I)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 2

    .prologue
    .line 39
    invoke-static {p1}, Lorg/chromium/chrome/browser/ResourceId;->mapToDrawableId(I)I

    move-result v0

    .line 40
    new-instance v1, Lorg/chromium/chrome/browser/infobar/DataReductionProxyInfoBar;

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/infobar/DataReductionProxyInfoBar;-><init>(I)V

    .line 41
    return-object v1
.end method
