.class Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$4;
.super Ljava/lang/Object;
.source "WebsiteSettingsPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

.field final synthetic val$webContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 395
    const-class v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$4;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    iput-object p2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$4;->val$webContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 398
    sget-boolean v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$4;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$4;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mNativeWebsiteSettingsPopup:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$600(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 399
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$4;->val$webContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->destroy()V

    .line 400
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$4;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$4;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mNativeWebsiteSettingsPopup:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$600(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->nativeDestroy(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$700(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;J)V

    .line 401
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$4;->this$0:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    # setter for: Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mNativeWebsiteSettingsPopup:J
    invoke-static {v0, v4, v5}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->access$602(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;J)J

    .line 402
    return-void
.end method
