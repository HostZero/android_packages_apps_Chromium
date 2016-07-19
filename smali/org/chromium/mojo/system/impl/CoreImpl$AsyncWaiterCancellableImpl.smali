.class Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;
.super Ljava/lang/Object;
.source "CoreImpl.java"

# interfaces
.implements Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;


# instance fields
.field private mActive:Z

.field private final mDataPtr:J

.field private final mId:J

.field final synthetic this$0:Lorg/chromium/mojo/system/impl/CoreImpl;


# direct methods
.method private constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl;JJ)V
    .locals 2

    .prologue
    .line 508
    iput-object p1, p0, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->this$0:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mActive:Z

    .line 509
    iput-wide p2, p0, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mId:J

    .line 510
    iput-wide p4, p0, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mDataPtr:J

    .line 511
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl;JJLorg/chromium/mojo/system/impl/CoreImpl$1;)V
    .locals 0

    .prologue
    .line 503
    invoke-direct/range {p0 .. p5}, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;JJ)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;)Z
    .locals 1

    .prologue
    .line 503
    invoke-direct {p0}, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->isActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;)V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0}, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->deactivate()V

    return-void
.end method

.method private deactivate()V
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mActive:Z

    .line 530
    return-void
.end method

.method private isActive()Z
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mActive:Z

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 6

    .prologue
    .line 518
    iget-boolean v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mActive:Z

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mActive:Z

    .line 520
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->this$0:Lorg/chromium/mojo/system/impl/CoreImpl;

    iget-wide v2, p0, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mId:J

    iget-wide v4, p0, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mDataPtr:J

    # invokes: Lorg/chromium/mojo/system/impl/CoreImpl;->nativeCancelAsyncWait(JJ)V
    invoke-static {v0, v2, v3, v4, v5}, Lorg/chromium/mojo/system/impl/CoreImpl;->access$200(Lorg/chromium/mojo/system/impl/CoreImpl;JJ)V

    .line 522
    :cond_0
    return-void
.end method
