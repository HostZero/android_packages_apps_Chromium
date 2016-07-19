.class Lorg/chromium/ui/picker/InputDialogContainer$4;
.super Ljava/lang/Object;
.source "InputDialogContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/picker/InputDialogContainer;


# direct methods
.method constructor <init>(Lorg/chromium/ui/picker/InputDialogContainer;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lorg/chromium/ui/picker/InputDialogContainer$4;->this$0:Lorg/chromium/ui/picker/InputDialogContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lorg/chromium/ui/picker/InputDialogContainer$4;->this$0:Lorg/chromium/ui/picker/InputDialogContainer;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/ui/picker/InputDialogContainer;->mDialogAlreadyDismissed:Z
    invoke-static {v0, v1}, Lorg/chromium/ui/picker/InputDialogContainer;->access$102(Lorg/chromium/ui/picker/InputDialogContainer;Z)Z

    .line 248
    iget-object v0, p0, Lorg/chromium/ui/picker/InputDialogContainer$4;->this$0:Lorg/chromium/ui/picker/InputDialogContainer;

    # getter for: Lorg/chromium/ui/picker/InputDialogContainer;->mInputActionDelegate:Lorg/chromium/ui/picker/InputDialogContainer$InputActionDelegate;
    invoke-static {v0}, Lorg/chromium/ui/picker/InputDialogContainer;->access$000(Lorg/chromium/ui/picker/InputDialogContainer;)Lorg/chromium/ui/picker/InputDialogContainer$InputActionDelegate;

    move-result-object v0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-interface {v0, v2, v3}, Lorg/chromium/ui/picker/InputDialogContainer$InputActionDelegate;->replaceDateTime(D)V

    .line 249
    return-void
.end method
