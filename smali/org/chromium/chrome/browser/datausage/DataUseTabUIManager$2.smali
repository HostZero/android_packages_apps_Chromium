.class final Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$2;
.super Ljava/lang/Object;
.source "DataUseTabUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->setOptedOutOfDataUseDialog(Landroid/content/Context;Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->access$000(Landroid/content/Context;Z)V

    .line 202
    const/4 v0, 0x6

    invoke-static {v0}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->recordDataUseUIAction(I)V

    .line 203
    return-void
.end method
