.class Lorg/chromium/content/browser/input/SelectPopupDialog$1;
.super Ljava/lang/Object;
.source "SelectPopupDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/SelectPopupDialog;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$1;->this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;

    iput-object p2, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$1;->this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;

    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$1;->val$listView:Landroid/widget/ListView;

    # invokes: Lorg/chromium/content/browser/input/SelectPopupDialog;->getSelectedIndices(Landroid/widget/ListView;)[I
    invoke-static {v1}, Lorg/chromium/content/browser/input/SelectPopupDialog;->access$000(Landroid/widget/ListView;)[I

    move-result-object v1

    # invokes: Lorg/chromium/content/browser/input/SelectPopupDialog;->notifySelection([I)V
    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/SelectPopupDialog;->access$100(Lorg/chromium/content/browser/input/SelectPopupDialog;[I)V

    .line 52
    return-void
.end method
