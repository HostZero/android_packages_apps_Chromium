.class Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;
.super Ljava/lang/Object;
.source "FindToolbar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    const-class v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # getter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$400(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    move-result-object v0

    if-nez v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # setter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mAccessibilityDidActivateResult:Z
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$202(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Z)Z

    .line 232
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->setPrevNextEnabled(Z)V

    .line 234
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # getter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mSettingFindTextProgrammatically:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$500(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    sget-boolean v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # getter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$100(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v0, v2

    .line 232
    goto :goto_1

    .line 239
    :cond_3
    sget-boolean v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # getter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$100(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 240
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # getter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$100(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 245
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # setter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mSearchKeyShouldTriggerSearch:Z
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$302(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Z)Z

    .line 246
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # getter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$400(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->startFinding(Ljava/lang/String;ZZ)V

    .line 252
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # getter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$100(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mLastUserSearch:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$602(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 248
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->clearResults()V

    .line 249
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$5;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # getter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$400(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->stopFinding(Z)V

    goto :goto_2
.end method
