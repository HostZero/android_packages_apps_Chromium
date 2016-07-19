.class public Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;
.super Ljava/lang/Object;
.source "CurrentlyOpenTab.java"


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field private final mTabId:I

.field private final mTitle:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;->mTabId:I

    .line 26
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;->mUrl:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;->mTitle:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;->mRunnable:Ljava/lang/Runnable;

    .line 29
    return-void
.end method


# virtual methods
.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getTabId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;->mTabId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;->mUrl:Ljava/lang/String;

    return-object v0
.end method
