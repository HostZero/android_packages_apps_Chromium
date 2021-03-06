.class Lorg/chromium/ui/picker/ChromeDatePickerDialog;
.super Landroid/app/DatePickerDialog;
.source "ChromeDatePickerDialog.java"


# instance fields
.field private final mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 29
    iput-object p2, p0, Lorg/chromium/ui/picker/ChromeDatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 38
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/picker/ChromeDatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lorg/chromium/ui/picker/ChromeDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 41
    iget-object v1, p0, Lorg/chromium/ui/picker/ChromeDatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    .line 44
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 52
    const-string/jumbo p1, ""

    .line 54
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
