.class public Lorg/chromium/chrome/browser/banners/AppData;
.super Ljava/lang/Object;
.source "AppData.java"


# instance fields
.field private mDetailsIntent:Landroid/app/PendingIntent;

.field private mImageUrl:Ljava/lang/String;

.field private mInstallButtonText:Ljava/lang/String;

.field private mInstallIntent:Landroid/content/Intent;

.field private final mPackageName:Ljava/lang/String;

.field private mRating:F

.field private final mSiteUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/chromium/chrome/browser/banners/AppData;->mSiteUrl:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lorg/chromium/chrome/browser/banners/AppData;->mPackageName:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public detailsIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/AppData;->mDetailsIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method imageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/AppData;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public installButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/AppData;->mInstallButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public installIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/AppData;->mInstallIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/AppData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public rating()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/chromium/chrome/browser/banners/AppData;->mRating:F

    return v0
.end method

.method public setPackageInfo(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lorg/chromium/chrome/browser/banners/AppData;->mTitle:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lorg/chromium/chrome/browser/banners/AppData;->mImageUrl:Ljava/lang/String;

    .line 118
    iput p3, p0, Lorg/chromium/chrome/browser/banners/AppData;->mRating:F

    .line 119
    iput-object p4, p0, Lorg/chromium/chrome/browser/banners/AppData;->mInstallButtonText:Ljava/lang/String;

    .line 120
    iput-object p5, p0, Lorg/chromium/chrome/browser/banners/AppData;->mDetailsIntent:Landroid/app/PendingIntent;

    .line 121
    iput-object p6, p0, Lorg/chromium/chrome/browser/banners/AppData;->mInstallIntent:Landroid/content/Intent;

    .line 122
    return-void
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/AppData;->mTitle:Ljava/lang/String;

    return-object v0
.end method
