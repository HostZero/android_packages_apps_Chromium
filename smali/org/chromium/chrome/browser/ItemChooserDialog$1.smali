.class Lorg/chromium/chrome/browser/ItemChooserDialog$1;
.super Ljava/lang/Object;
.source "ItemChooserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ItemChooserDialog;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ItemChooserDialog;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$1;->this$0:Lorg/chromium/chrome/browser/ItemChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$1;->this$0:Lorg/chromium/chrome/browser/ItemChooserDialog;

    # getter for: Lorg/chromium/chrome/browser/ItemChooserDialog;->mItemSelectedCallback:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemSelectedCallback;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->access$400(Lorg/chromium/chrome/browser/ItemChooserDialog;)Lorg/chromium/chrome/browser/ItemChooserDialog$ItemSelectedCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$1;->this$0:Lorg/chromium/chrome/browser/ItemChooserDialog;

    # getter for: Lorg/chromium/chrome/browser/ItemChooserDialog;->mItemAdapter:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ItemChooserDialog;->access$300(Lorg/chromium/chrome/browser/ItemChooserDialog;)Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->getSelectedItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemSelectedCallback;->onItemSelected(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$1;->this$0:Lorg/chromium/chrome/browser/ItemChooserDialog;

    # getter for: Lorg/chromium/chrome/browser/ItemChooserDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->access$500(Lorg/chromium/chrome/browser/ItemChooserDialog;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 294
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$1;->this$0:Lorg/chromium/chrome/browser/ItemChooserDialog;

    # getter for: Lorg/chromium/chrome/browser/ItemChooserDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->access$500(Lorg/chromium/chrome/browser/ItemChooserDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 295
    return-void
.end method
