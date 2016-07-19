.class public Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;
.super Ljava/lang/Object;
.source "TemplateUrlService.java"


# instance fields
.field private final mIndex:I

.field private final mShortName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mIndex:I

    .line 59
    iput-object p2, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mShortName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static create(ILjava/lang/String;)Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 81
    instance-of v1, p1, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    check-cast p1, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    .line 83
    iget v1, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mIndex:I

    iget v2, p1, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mIndex:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mShortName:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mShortName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mIndex:I

    return v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mShortName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mIndex:I

    add-int/lit8 v0, v0, 0x1f

    .line 75
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mShortName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 76
    return v0

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->mShortName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
