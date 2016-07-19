.class Lorg/chromium/chrome/browser/ItemChooserDialog$2;
.super Ljava/lang/Object;
.source "ItemChooserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ItemChooserDialog;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ItemChooserDialog;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$2;->this$0:Lorg/chromium/chrome/browser/ItemChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$2;->this$0:Lorg/chromium/chrome/browser/ItemChooserDialog;

    # getter for: Lorg/chromium/chrome/browser/ItemChooserDialog;->mItemSelectedCallback:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemSelectedCallback;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->access$400(Lorg/chromium/chrome/browser/ItemChooserDialog;)Lorg/chromium/chrome/browser/ItemChooserDialog$ItemSelectedCallback;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemSelectedCallback;->onItemSelected(Ljava/lang/String;)V

    .line 334
    return-void
.end method
