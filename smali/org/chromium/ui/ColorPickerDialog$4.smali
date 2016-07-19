.class Lorg/chromium/ui/ColorPickerDialog$4;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/ColorPickerDialog;


# direct methods
.method constructor <init>(Lorg/chromium/ui/ColorPickerDialog;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/chromium/ui/ColorPickerDialog$4;->this$0:Lorg/chromium/ui/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerDialog$4;->this$0:Lorg/chromium/ui/ColorPickerDialog;

    # invokes: Lorg/chromium/ui/ColorPickerDialog;->showAdvancedView()V
    invoke-static {v0}, Lorg/chromium/ui/ColorPickerDialog;->access$300(Lorg/chromium/ui/ColorPickerDialog;)V

    .line 106
    return-void
.end method
