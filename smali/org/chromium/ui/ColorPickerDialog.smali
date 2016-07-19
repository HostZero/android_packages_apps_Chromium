.class public Lorg/chromium/ui/ColorPickerDialog;
.super Landroid/app/AlertDialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Lorg/chromium/ui/OnColorChangedListener;


# instance fields
.field private final mAdvancedColorPicker:Lorg/chromium/ui/ColorPickerAdvanced;

.field private mCurrentColor:I

.field private final mCurrentColorView:Landroid/view/View;

.field private final mInitialColor:I

.field private final mListener:Lorg/chromium/ui/OnColorChangedListener;

.field private final mMoreButton:Landroid/widget/Button;

.field private final mSimpleColorPicker:Lorg/chromium/ui/ColorPickerSimple;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/OnColorChangedListener;I[Lorg/chromium/ui/ColorSuggestion;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 48
    iput-object p2, p0, Lorg/chromium/ui/ColorPickerDialog;->mListener:Lorg/chromium/ui/OnColorChangedListener;

    .line 49
    iput p3, p0, Lorg/chromium/ui/ColorPickerDialog;->mInitialColor:I

    .line 50
    iget v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mInitialColor:I

    iput v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mCurrentColor:I

    .line 53
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 55
    sget v1, Lorg/chromium/ui/R$layout;->color_picker_dialog_title:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 56
    invoke-virtual {p0, v1}, Lorg/chromium/ui/ColorPickerDialog;->setCustomTitle(Landroid/view/View;)V

    .line 58
    sget v2, Lorg/chromium/ui/R$id;->selected_color_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/ui/ColorPickerDialog;->mCurrentColorView:Landroid/view/View;

    .line 60
    sget v2, Lorg/chromium/ui/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    sget v2, Lorg/chromium/ui/R$string;->color_picker_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 64
    sget v1, Lorg/chromium/ui/R$string;->color_picker_button_set:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    const/4 v2, -0x1

    new-instance v3, Lorg/chromium/ui/ColorPickerDialog$1;

    invoke-direct {v3, p0}, Lorg/chromium/ui/ColorPickerDialog$1;-><init>(Lorg/chromium/ui/ColorPickerDialog;)V

    invoke-virtual {p0, v2, v1, v3}, Lorg/chromium/ui/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 80
    sget v1, Lorg/chromium/ui/R$string;->color_picker_button_cancel:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    const/4 v2, -0x2

    new-instance v3, Lorg/chromium/ui/ColorPickerDialog$2;

    invoke-direct {v3, p0}, Lorg/chromium/ui/ColorPickerDialog$2;-><init>(Lorg/chromium/ui/ColorPickerDialog;)V

    invoke-virtual {p0, v2, v1, v3}, Lorg/chromium/ui/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 89
    new-instance v1, Lorg/chromium/ui/ColorPickerDialog$3;

    invoke-direct {v1, p0}, Lorg/chromium/ui/ColorPickerDialog$3;-><init>(Lorg/chromium/ui/ColorPickerDialog;)V

    invoke-virtual {p0, v1}, Lorg/chromium/ui/ColorPickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 97
    sget v1, Lorg/chromium/ui/R$layout;->color_picker_dialog_content:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    invoke-virtual {p0, v1}, Lorg/chromium/ui/ColorPickerDialog;->setView(Landroid/view/View;)V

    .line 101
    sget v0, Lorg/chromium/ui/R$id;->more_colors_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mMoreButton:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mMoreButton:Landroid/widget/Button;

    new-instance v2, Lorg/chromium/ui/ColorPickerDialog$4;

    invoke-direct {v2, p0}, Lorg/chromium/ui/ColorPickerDialog$4;-><init>(Lorg/chromium/ui/ColorPickerDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget v0, Lorg/chromium/ui/R$id;->color_picker_advanced:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/ColorPickerAdvanced;

    iput-object v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mAdvancedColorPicker:Lorg/chromium/ui/ColorPickerAdvanced;

    .line 112
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mAdvancedColorPicker:Lorg/chromium/ui/ColorPickerAdvanced;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/chromium/ui/ColorPickerAdvanced;->setVisibility(I)V

    .line 115
    sget v0, Lorg/chromium/ui/R$id;->color_picker_simple:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/ColorPickerSimple;

    iput-object v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mSimpleColorPicker:Lorg/chromium/ui/ColorPickerSimple;

    .line 116
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mSimpleColorPicker:Lorg/chromium/ui/ColorPickerSimple;

    invoke-virtual {v0, p4, p0}, Lorg/chromium/ui/ColorPickerSimple;->init([Lorg/chromium/ui/ColorSuggestion;Lorg/chromium/ui/OnColorChangedListener;)V

    .line 118
    iget v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mInitialColor:I

    invoke-direct {p0, v0}, Lorg/chromium/ui/ColorPickerDialog;->updateCurrentColor(I)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/ui/ColorPickerDialog;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mCurrentColor:I

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/ui/ColorPickerDialog;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/chromium/ui/ColorPickerDialog;->tryNotifyColorSet(I)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/ui/ColorPickerDialog;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mInitialColor:I

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/ui/ColorPickerDialog;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/chromium/ui/ColorPickerDialog;->showAdvancedView()V

    return-void
.end method

.method private showAdvancedView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 139
    sget v0, Lorg/chromium/ui/R$id;->more_colors_button_border:I

    invoke-virtual {p0, v0}, Lorg/chromium/ui/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    sget v0, Lorg/chromium/ui/R$id;->color_picker_simple:I

    invoke-virtual {p0, v0}, Lorg/chromium/ui/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mAdvancedColorPicker:Lorg/chromium/ui/ColorPickerAdvanced;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/ui/ColorPickerAdvanced;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mAdvancedColorPicker:Lorg/chromium/ui/ColorPickerAdvanced;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/ColorPickerAdvanced;->setListener(Lorg/chromium/ui/OnColorChangedListener;)V

    .line 147
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mAdvancedColorPicker:Lorg/chromium/ui/ColorPickerAdvanced;

    iget v1, p0, Lorg/chromium/ui/ColorPickerDialog;->mCurrentColor:I

    invoke-virtual {v0, v1}, Lorg/chromium/ui/ColorPickerAdvanced;->setColor(I)V

    .line 148
    return-void
.end method

.method private tryNotifyColorSet(I)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mListener:Lorg/chromium/ui/OnColorChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mListener:Lorg/chromium/ui/OnColorChangedListener;

    invoke-interface {v0, p1}, Lorg/chromium/ui/OnColorChangedListener;->onColorChanged(I)V

    .line 155
    :cond_0
    return-void
.end method

.method private updateCurrentColor(I)V
    .locals 1

    .prologue
    .line 162
    iput p1, p0, Lorg/chromium/ui/ColorPickerDialog;->mCurrentColor:I

    .line 163
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mCurrentColorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mCurrentColorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lorg/chromium/ui/ColorPickerDialog;->updateCurrentColor(I)V

    .line 130
    return-void
.end method
