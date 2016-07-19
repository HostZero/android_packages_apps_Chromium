.class final Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;
.super Ljava/lang/Object;
.source "DataUseTabUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$pageTransitionType:I

.field final synthetic val$referrerUrl:Ljava/lang/String;

.field final synthetic val$tab:Lorg/chromium/chrome/browser/tab/Tab;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/CheckBox;Ljava/lang/String;ILjava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;->val$url:Ljava/lang/String;

    iput p4, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;->val$pageTransitionType:I

    iput-object p5, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;->val$referrerUrl:Ljava/lang/String;

    iput-object p6, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->setOptedOutOfDataUseDialog(Landroid/content/Context;Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->access$000(Landroid/content/Context;Z)V

    .line 185
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    iget-object v1, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;->val$url:Ljava/lang/String;

    iget v2, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;->val$pageTransitionType:I

    invoke-direct {v0, v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 187
    iget-object v1, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;->val$referrerUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    new-instance v1, Lorg/chromium/content_public/common/Referrer;

    iget-object v2, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;->val$referrerUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/chromium/content_public/common/Referrer;-><init>(Ljava/lang/String;I)V

    .line 190
    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setReferrer(Lorg/chromium/content_public/common/Referrer;)V

    .line 192
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 193
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->recordDataUseUIAction(I)V

    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$3;->val$tab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->userClickedContinueOnDialogBox(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 195
    return-void
.end method
