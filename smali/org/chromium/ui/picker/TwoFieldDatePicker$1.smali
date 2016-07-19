.class Lorg/chromium/ui/picker/TwoFieldDatePicker$1;
.super Ljava/lang/Object;
.source "TwoFieldDatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/picker/TwoFieldDatePicker;


# direct methods
.method constructor <init>(Lorg/chromium/ui/picker/TwoFieldDatePicker;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker$1;->this$0:Lorg/chromium/ui/picker/TwoFieldDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker$1;->this$0:Lorg/chromium/ui/picker/TwoFieldDatePicker;

    invoke-virtual {v0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getYear()I

    move-result v1

    .line 71
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker$1;->this$0:Lorg/chromium/ui/picker/TwoFieldDatePicker;

    invoke-virtual {v0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getPositionInYear()I

    move-result v0

    .line 73
    iget-object v2, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker$1;->this$0:Lorg/chromium/ui/picker/TwoFieldDatePicker;

    # getter for: Lorg/chromium/ui/picker/TwoFieldDatePicker;->mPositionInYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v2}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->access$000(Lorg/chromium/ui/picker/TwoFieldDatePicker;)Landroid/widget/NumberPicker;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 75
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 76
    add-int/lit8 v0, v1, 0x1

    .line 77
    iget-object v1, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker$1;->this$0:Lorg/chromium/ui/picker/TwoFieldDatePicker;

    invoke-virtual {v1, v0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getMinPositionInYear(I)I

    move-result p3

    .line 89
    :goto_0
    iget-object v1, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker$1;->this$0:Lorg/chromium/ui/picker/TwoFieldDatePicker;

    invoke-virtual {v1, v0, p3}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->setCurrentDate(II)V

    .line 90
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker$1;->this$0:Lorg/chromium/ui/picker/TwoFieldDatePicker;

    invoke-virtual {v0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->updateSpinners()V

    .line 91
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker$1;->this$0:Lorg/chromium/ui/picker/TwoFieldDatePicker;

    invoke-virtual {v0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->notifyDateChanged()V

    .line 92
    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v0

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v0

    if-ne p3, v0, :cond_3

    .line 79
    add-int/lit8 v0, v1, -0x1

    .line 80
    iget-object v1, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker$1;->this$0:Lorg/chromium/ui/picker/TwoFieldDatePicker;

    invoke-virtual {v1, v0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getMaxPositionInYear(I)I

    move-result p3

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker$1;->this$0:Lorg/chromium/ui/picker/TwoFieldDatePicker;

    # getter for: Lorg/chromium/ui/picker/TwoFieldDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v1}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->access$100(Lorg/chromium/ui/picker/TwoFieldDatePicker;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_2

    move v3, v0

    move v0, p3

    move p3, v3

    .line 83
    goto :goto_0

    .line 85
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
