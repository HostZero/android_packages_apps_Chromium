.class public Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "MultiFieldTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final mBaseMilli:I

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private final mIs24hourFormat:Z

.field private final mListener:Lorg/chromium/ui/picker/MultiFieldTimePickerDialog$OnMultiFieldTimeSetListener;

.field private final mMilliSpinner:Landroid/widget/NumberPicker;

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final mSecSpinner:Landroid/widget/NumberPicker;

.field private final mStep:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIIIIZLorg/chromium/ui/picker/MultiFieldTimePickerDialog$OnMultiFieldTimeSetListener;)V
    .locals 17

    .prologue
    .line 55
    invoke-direct/range {p0 .. p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mListener:Lorg/chromium/ui/picker/MultiFieldTimePickerDialog$OnMultiFieldTimeSetListener;

    .line 57
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mStep:I

    .line 58
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mIs24hourFormat:Z

    .line 60
    move/from16 v0, p7

    move/from16 v1, p8

    if-lt v0, v1, :cond_0

    .line 61
    const/16 p7, 0x0

    .line 62
    const p8, 0x5265bff

    .line 64
    :cond_0
    if-ltz p9, :cond_1

    const v2, 0x5265c00

    move/from16 v0, p9

    if-lt v0, v2, :cond_2

    .line 65
    :cond_1
    const p9, 0xea60

    .line 68
    :cond_2
    const-string/jumbo v2, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 71
    sget v3, Lorg/chromium/ui/R$layout;->multi_field_time_picker_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 72
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->setView(Landroid/view/View;)V

    .line 74
    sget v2, Lorg/chromium/ui/R$id;->hour:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mHourSpinner:Landroid/widget/NumberPicker;

    .line 75
    sget v2, Lorg/chromium/ui/R$id;->minute:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMinuteSpinner:Landroid/widget/NumberPicker;

    .line 76
    sget v2, Lorg/chromium/ui/R$id;->second:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mSecSpinner:Landroid/widget/NumberPicker;

    .line 77
    sget v2, Lorg/chromium/ui/R$id;->milli:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    .line 78
    sget v2, Lorg/chromium/ui/R$id;->ampm:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 80
    const v2, 0x36ee80

    div-int v5, p7, v2

    .line 81
    const v2, 0x36ee80

    div-int v4, p8, v2

    .line 82
    const v2, 0x36ee80

    mul-int/2addr v2, v5

    sub-int v9, p7, v2

    .line 83
    const v2, 0x36ee80

    mul-int/2addr v2, v4

    sub-int v10, p8, v2

    .line 85
    if-ne v5, v4, :cond_1a

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    move v6, v5

    .line 90
    :goto_0
    if-eqz p10, :cond_c

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setVisibility(I)V

    move v7, v5

    move v2, v6

    move v6, v4

    .line 129
    :goto_1
    if-ne v7, v6, :cond_3

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 132
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 136
    new-instance v5, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog$NumberFormatter;

    const-string/jumbo v2, "%02d"

    invoke-direct {v5, v2}, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog$NumberFormatter;-><init>(Ljava/lang/String;)V

    .line 138
    const v2, 0xea60

    div-int v2, v9, v2

    .line 139
    const v3, 0xea60

    div-int v11, v10, v3

    .line 140
    const v3, 0xea60

    mul-int/2addr v3, v2

    sub-int v4, v9, v3

    .line 141
    const v3, 0xea60

    mul-int/2addr v3, v11

    sub-int v9, v10, v3

    .line 143
    if-ne v7, v6, :cond_11

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v11}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 146
    if-ne v2, v11, :cond_4

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v5, v2}, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog$NumberFormatter;->format(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    invoke-virtual {v3, v10}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    move/from16 p4, v2

    .line 158
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMinuteSpinner:Landroid/widget/NumberPicker;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 159
    const v3, 0x36ee80

    rem-int v3, p9, v3

    if-nez v3, :cond_5

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 166
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v5}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 168
    const v3, 0xea60

    move/from16 v0, p9

    if-lt v0, v3, :cond_6

    .line 170
    sget v3, Lorg/chromium/ui/R$id;->second_colon:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mSecSpinner:Landroid/widget/NumberPicker;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 174
    :cond_6
    div-int/lit16 v3, v4, 0x3e8

    .line 175
    div-int/lit16 v10, v9, 0x3e8

    .line 176
    mul-int/lit16 v12, v3, 0x3e8

    sub-int/2addr v4, v12

    .line 177
    mul-int/lit16 v12, v10, 0x3e8

    sub-int/2addr v9, v12

    .line 179
    if-ne v7, v6, :cond_12

    if-ne v2, v11, :cond_12

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mSecSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v12, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mSecSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v12, v10}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 182
    if-ne v3, v10, :cond_7

    .line 184
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mSecSpinner:Landroid/widget/NumberPicker;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v5, v3}, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog$NumberFormatter;->format(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mSecSpinner:Landroid/widget/NumberPicker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    move/from16 p5, v3

    .line 194
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mSecSpinner:Landroid/widget/NumberPicker;

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mSecSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v12, v5}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 197
    const/16 v5, 0x3e8

    move/from16 v0, p9

    if-lt v0, v5, :cond_8

    .line 199
    sget v5, Lorg/chromium/ui/R$id;->second_dot:I

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 204
    :cond_8
    div-int/lit8 v5, p9, 0x2

    add-int v5, v5, p6

    div-int v5, v5, p9

    mul-int v5, v5, p9

    .line 205
    const/4 v8, 0x1

    move/from16 v0, p9

    if-eq v0, v8, :cond_9

    const/16 v8, 0xa

    move/from16 v0, p9

    if-eq v0, v8, :cond_9

    const/16 v8, 0x64

    move/from16 v0, p9

    if-ne v0, v8, :cond_17

    .line 206
    :cond_9
    if-ne v7, v6, :cond_13

    if-ne v2, v11, :cond_13

    if-ne v3, v10, :cond_13

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    div-int v3, v4, p9

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    div-int v3, v9, p9

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 210
    if-ne v4, v9, :cond_14

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 219
    :goto_4
    const/4 v2, 0x1

    move/from16 v0, p9

    if-ne v0, v2, :cond_15

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    new-instance v3, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog$NumberFormatter;

    const-string/jumbo v5, "%03d"

    invoke-direct {v3, v5}, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog$NumberFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 226
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    div-int v3, v4, p9

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 240
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mBaseMilli:I

    .line 242
    :goto_6
    return-void

    .line 93
    :cond_c
    div-int/lit8 v2, v5, 0xc

    .line 94
    div-int/lit8 v7, v4, 0xc

    .line 95
    div-int/lit8 v3, v6, 0xc

    .line 96
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v11, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v11, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 98
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    sget v14, Lorg/chromium/ui/R$string;->time_picker_dialog_am:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget v14, Lorg/chromium/ui/R$string;->time_picker_dialog_pm:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 103
    rem-int/lit8 v6, v6, 0xc

    .line 104
    if-nez v6, :cond_d

    .line 105
    const/16 v6, 0xc

    .line 107
    :cond_d
    if-ne v2, v7, :cond_10

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 111
    rem-int/lit8 v5, v5, 0xc

    .line 112
    rem-int/lit8 v4, v4, 0xc

    .line 113
    if-nez v5, :cond_e

    if-nez v4, :cond_e

    .line 114
    const/16 v4, 0xc

    .line 115
    const/16 v3, 0xc

    .line 126
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    move v7, v4

    move v2, v6

    move v6, v3

    goto/16 :goto_1

    .line 116
    :cond_e
    if-nez v5, :cond_f

    .line 118
    const/16 v3, 0xc

    goto :goto_7

    .line 119
    :cond_f
    if-nez v4, :cond_19

    .line 120
    const/16 v3, 0xc

    move v4, v5

    goto :goto_7

    .line 123
    :cond_10
    const/4 v4, 0x1

    .line 124
    const/16 v2, 0xc

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_7

    .line 154
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/16 v10, 0x3b

    invoke-virtual {v3, v10}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto/16 :goto_2

    .line 190
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mSecSpinner:Landroid/widget/NumberPicker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mSecSpinner:Landroid/widget/NumberPicker;

    const/16 v13, 0x3b

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto/16 :goto_3

    .line 215
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    const/16 v3, 0x3e7

    div-int v3, v3, p9

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    :cond_14
    move v4, v5

    goto/16 :goto_4

    .line 221
    :cond_15
    const/16 v2, 0xa

    move/from16 v0, p9

    if-ne v0, v2, :cond_16

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    new-instance v3, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog$NumberFormatter;

    const-string/jumbo v5, "%02d"

    invoke-direct {v3, v5}, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog$NumberFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    goto/16 :goto_5

    .line 223
    :cond_16
    const/16 v2, 0x64

    move/from16 v0, p9

    if-ne v0, v2, :cond_a

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    new-instance v3, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog$NumberFormatter;

    const-string/jumbo v5, "%d"

    invoke-direct {v3, v5}, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog$NumberFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    goto/16 :goto_5

    .line 228
    :cond_17
    const/16 v2, 0x3e8

    move/from16 v0, p9

    if-ge v0, v2, :cond_b

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v2, v4

    .line 231
    :goto_8
    if-ge v2, v9, :cond_18

    .line 232
    const-string/jumbo v6, "%03d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    add-int v2, v2, p9

    goto :goto_8

    .line 234
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    sub-int/2addr v5, v4

    div-int v5, v5, p9

    invoke-virtual {v2, v5}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iput v4, v0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mBaseMilli:I

    goto/16 :goto_6

    :cond_19
    move v3, v4

    move v4, v5

    goto/16 :goto_7

    :cond_1a
    move/from16 v6, p3

    goto/16 :goto_0
.end method

.method private getPickerValue(Landroid/widget/NumberPicker;)I
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 270
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method private notifyDateSet()V
    .locals 6

    .prologue
    .line 250
    iget-object v0, p0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v0}, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->getPickerValue(Landroid/widget/NumberPicker;)I

    move-result v0

    .line 251
    iget-object v1, p0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v1}, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->getPickerValue(Landroid/widget/NumberPicker;)I

    move-result v1

    .line 252
    iget-object v2, p0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mSecSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v2}, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->getPickerValue(Landroid/widget/NumberPicker;)I

    move-result v2

    .line 253
    iget-object v3, p0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3}, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->getPickerValue(Landroid/widget/NumberPicker;)I

    move-result v3

    iget v4, p0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mStep:I

    mul-int/2addr v3, v4

    iget v4, p0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mBaseMilli:I

    add-int/2addr v3, v4

    .line 254
    iget-boolean v4, p0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mIs24hourFormat:Z

    if-nez v4, :cond_1

    .line 255
    iget-object v4, p0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4}, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->getPickerValue(Landroid/widget/NumberPicker;)I

    move-result v4

    .line 256
    const/16 v5, 0xc

    if-ne v0, v5, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 259
    :cond_0
    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v0, v4

    .line 261
    :cond_1
    iget-object v4, p0, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->mListener:Lorg/chromium/ui/picker/MultiFieldTimePickerDialog$OnMultiFieldTimeSetListener;

    invoke-interface {v4, v0, v1, v2, v3}, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog$OnMultiFieldTimeSetListener;->onTimeSet(IIII)V

    .line 262
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Lorg/chromium/ui/picker/MultiFieldTimePickerDialog;->notifyDateSet()V

    .line 247
    return-void
.end method
