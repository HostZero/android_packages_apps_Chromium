.class public Lorg/chromium/chrome/browser/FrozenNativePage;
.super Ljava/lang/Object;
.source "FrozenNativePage.java"

# interfaces
.implements Lorg/chromium/chrome/browser/NativePage;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mBackgroundColor:I

.field private final mHost:Ljava/lang/String;

.field private final mThemeColor:I

.field private final mTitle:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lorg/chromium/chrome/browser/FrozenNativePage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/FrozenNativePage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/chrome/browser/NativePage;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-interface {p1}, Lorg/chromium/chrome/browser/NativePage;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/FrozenNativePage;->mHost:Ljava/lang/String;

    .line 34
    invoke-interface {p1}, Lorg/chromium/chrome/browser/NativePage;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/FrozenNativePage;->mUrl:Ljava/lang/String;

    .line 35
    invoke-interface {p1}, Lorg/chromium/chrome/browser/NativePage;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/FrozenNativePage;->mTitle:Ljava/lang/String;

    .line 36
    invoke-interface {p1}, Lorg/chromium/chrome/browser/NativePage;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/FrozenNativePage;->mBackgroundColor:I

    .line 37
    invoke-interface {p1}, Lorg/chromium/chrome/browser/NativePage;->getThemeColor()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/FrozenNativePage;->mThemeColor:I

    .line 38
    return-void
.end method

.method public static freeze(Lorg/chromium/chrome/browser/NativePage;)Lorg/chromium/chrome/browser/FrozenNativePage;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lorg/chromium/chrome/browser/FrozenNativePage;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/FrozenNativePage;-><init>(Lorg/chromium/chrome/browser/NativePage;)V

    .line 28
    invoke-interface {p0}, Lorg/chromium/chrome/browser/NativePage;->destroy()V

    .line 29
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/chromium/chrome/browser/FrozenNativePage;->mBackgroundColor:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/FrozenNativePage;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeColor()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/chromium/chrome/browser/FrozenNativePage;->mThemeColor:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/FrozenNativePage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/FrozenNativePage;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lorg/chromium/chrome/browser/FrozenNativePage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateForUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
