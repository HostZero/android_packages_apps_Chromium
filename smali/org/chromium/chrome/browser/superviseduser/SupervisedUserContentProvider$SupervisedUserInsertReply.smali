.class Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserInsertReply;
.super Ljava/lang/Object;
.source "SupervisedUserContentProvider.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final mLatch:Ljava/util/concurrent/CountDownLatch;

.field mResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-class v0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserInsertReply;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserInsertReply;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method getResult()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserInsertReply;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 122
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserInsertReply;->mResult:Z

    return v0
.end method

.method onInsertRequestSendComplete(Z)V
    .locals 4

    .prologue
    .line 116
    sget-boolean v0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserInsertReply;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserInsertReply;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 117
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserInsertReply;->mResult:Z

    .line 118
    iget-object v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserInsertReply;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 119
    return-void
.end method
