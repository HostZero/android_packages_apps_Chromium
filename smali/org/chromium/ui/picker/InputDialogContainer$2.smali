.class Lorg/chromium/ui/picker/InputDialogContainer$2;
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
    .line 160
    iput-object p1, p0, Lorg/chromium/ui/picker/InputDialogContainer$2;->this$0:Lorg/chromium/ui/picker/InputDialogContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/chromium/ui/picker/InputDialogContainer$2;->this$0:Lorg/chromium/ui/picker/InputDialogContainer;

    invoke-virtual {v0}, Lorg/chromium/ui/picker/InputDialogContainer;->dismissDialog()V

    .line 164
    return-void
.end method
