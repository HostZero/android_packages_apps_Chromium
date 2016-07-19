.class final Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;
.super Ljava/lang/Object;
.source "CustomTabsConnection.java"


# instance fields
.field public final mExtras:Landroid/os/Bundle;

.field public final mReferrer:Ljava/lang/String;

.field public final mSession:Landroid/os/IBinder;

.field public final mUrl:Ljava/lang/String;

.field public final mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method constructor <init>(Landroid/os/IBinder;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->mSession:Landroid/os/IBinder;

    .line 91
    iput-object p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 92
    iput-object p3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->mUrl:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->mReferrer:Ljava/lang/String;

    .line 94
    iput-object p5, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->mExtras:Landroid/os/Bundle;

    .line 95
    return-void
.end method
