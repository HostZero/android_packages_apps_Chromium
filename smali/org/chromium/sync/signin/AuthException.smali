.class public Lorg/chromium/sync/signin/AuthException;
.super Ljava/lang/Exception;
.source "AuthException.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mIsTransientError:Z

.field private final mRecoveryIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lorg/chromium/sync/signin/AuthException;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/sync/signin/AuthException;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ZLandroid/content/Intent;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 27
    sget-boolean v0, Lorg/chromium/sync/signin/AuthException;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/sync/signin/AuthException;->mIsTransientError:Z

    .line 29
    iput-object p2, p0, Lorg/chromium/sync/signin/AuthException;->mRecoveryIntent:Landroid/content/Intent;

    .line 30
    return-void
.end method


# virtual methods
.method public getRecoveryIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/sync/signin/AuthException;->mRecoveryIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public isTransientError()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/chromium/sync/signin/AuthException;->mIsTransientError:Z

    return v0
.end method
