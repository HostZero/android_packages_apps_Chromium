.class Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$2;
.super Ljava/lang/Object;
.source "ConnectionInfoPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;

.field final synthetic val$webContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$2;->this$0:Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;

    iput-object p2, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$2;->val$webContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 90
    sget-boolean v0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$2;->this$0:Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mNativeConnectionInfoPopup:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->access$100(Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$2;->val$webContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->destroy()V

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$2;->this$0:Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$2;->this$0:Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mNativeConnectionInfoPopup:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->access$100(Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->nativeDestroy(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->access$200(Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;J)V

    .line 93
    return-void
.end method
