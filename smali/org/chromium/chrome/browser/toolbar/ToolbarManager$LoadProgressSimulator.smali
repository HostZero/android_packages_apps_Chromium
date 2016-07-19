.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;
.super Ljava/lang/Object;
.source "ToolbarManager.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mProgress:I

.field private final mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 2

    .prologue
    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1156
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    .line 1157
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator$1;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mHandler:Landroid/os/Handler;

    .line 1171
    return-void
.end method

.method static synthetic access$3200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;)I
    .locals 1

    .prologue
    .line 1144
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mProgress:I

    return v0
.end method

.method static synthetic access$3202(Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;I)I
    .locals 0

    .prologue
    .line 1144
    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mProgress:I

    return p1
.end method

.method static synthetic access$3212(Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;I)I
    .locals 1

    .prologue
    .line 1144
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mProgress:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mProgress:I

    return v0
.end method

.method static synthetic access$3300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;)Lorg/chromium/chrome/browser/toolbar/ToolbarManager;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 1187
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1188
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1177
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mProgress:I

    .line 1178
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->startLoadProgress()V

    .line 1179
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mProgress:I

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateLoadProgress(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1100(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)V

    .line 1180
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1181
    return-void
.end method
