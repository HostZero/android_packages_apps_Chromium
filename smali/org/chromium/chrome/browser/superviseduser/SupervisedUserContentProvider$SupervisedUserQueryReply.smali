.class Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;
.super Ljava/lang/Object;
.source "SupervisedUserContentProvider.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mResult:Landroid/util/Pair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method getResult()Landroid/util/Pair;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;->mResult:Landroid/util/Pair;

    return-object v0
.end method

.method onQueryComplete(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    sget-boolean v0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;->mResult:Landroid/util/Pair;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;->mResult:Landroid/util/Pair;

    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 67
    return-void
.end method
