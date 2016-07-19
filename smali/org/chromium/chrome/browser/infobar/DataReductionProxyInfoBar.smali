.class public Lorg/chromium/chrome/browser/infobar/DataReductionProxyInfoBar;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "DataReductionProxyInfoBar.java"


# static fields
.field private static sLinkText:Ljava/lang/String;

.field private static sTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 35
    sget-object v3, Lorg/chromium/chrome/browser/infobar/DataReductionProxyInfoBar;->sTitle:Ljava/lang/String;

    sget-object v4, Lorg/chromium/chrome/browser/infobar/DataReductionProxyInfoBar;->sLinkText:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static launch(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    sput-object p1, Lorg/chromium/chrome/browser/infobar/DataReductionProxyInfoBar;->sTitle:Ljava/lang/String;

    .line 30
    sput-object p2, Lorg/chromium/chrome/browser/infobar/DataReductionProxyInfoBar;->sLinkText:Ljava/lang/String;

    .line 31
    invoke-static {p0, p3}, Lorg/chromium/chrome/browser/infobar/DataReductionProxyInfoBarDelegate;->launch(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onButtonClicked(Z)V
    .locals 0

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/DataReductionProxyInfoBar;->onLinkClicked()V

    goto :goto_0
.end method
