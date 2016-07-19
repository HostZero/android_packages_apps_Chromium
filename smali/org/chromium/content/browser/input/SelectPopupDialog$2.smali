.class Lorg/chromium/content/browser/input/SelectPopupDialog$2;
.super Ljava/lang/Object;
.source "SelectPopupDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/SelectPopupDialog;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$2;->this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$2;->this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/content/browser/input/SelectPopupDialog;->notifySelection([I)V
    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/SelectPopupDialog;->access$100(Lorg/chromium/content/browser/input/SelectPopupDialog;[I)V

    .line 59
    return-void
.end method
