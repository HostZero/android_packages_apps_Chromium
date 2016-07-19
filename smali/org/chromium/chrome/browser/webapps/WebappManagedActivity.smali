.class public abstract Lorg/chromium/chrome/browser/webapps/WebappManagedActivity;
.super Lorg/chromium/chrome/browser/webapps/WebappActivity;
.source "WebappManagedActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mActivityIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lorg/chromium/chrome/browser/webapps/WebappManagedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/webapps/WebappManagedActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;-><init>()V

    .line 17
    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/WebappManagedActivity;->getActivityIndex()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/webapps/WebappManagedActivity;->mActivityIndex:I

    .line 18
    return-void
.end method

.method private getActivityIndex()I
    .locals 4

    .prologue
    .line 48
    const-class v0, Lorg/chromium/chrome/browser/webapps/WebappActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 50
    sget-boolean v2, Lorg/chromium/chrome/browser/webapps/WebappManagedActivity;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "^"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[0-9]+$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private markActivityUsed()V
    .locals 3

    .prologue
    .line 38
    invoke-static {p0}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->instance(Landroid/content/Context;)Lorg/chromium/chrome/browser/webapps/ActivityAssigner;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/webapps/WebappManagedActivity;->mActivityIndex:I

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappManagedActivity;->getWebappInfo()Lorg/chromium/chrome/browser/webapps/WebappInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->markActivityUsed(ILjava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lorg/chromium/chrome/browser/webapps/WebappManagedActivity;->mActivityIndex:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onStartWithNative()V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->onStartWithNative()V

    .line 24
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappManagedActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/WebappManagedActivity;->markActivityUsed()V

    .line 27
    :cond_0
    return-void
.end method
