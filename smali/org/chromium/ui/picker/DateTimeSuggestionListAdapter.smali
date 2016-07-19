.class Lorg/chromium/ui/picker/DateTimeSuggestionListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DateTimeSuggestionListAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 25
    sget v0, Lorg/chromium/ui/R$layout;->date_time_suggestion:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    iput-object p1, p0, Lorg/chromium/ui/picker/DateTimeSuggestionListAdapter;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimeSuggestionListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 34
    sget v1, Lorg/chromium/ui/R$layout;->date_time_suggestion:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 36
    :cond_0
    sget v0, Lorg/chromium/ui/R$id;->date_time_suggestion_value:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 37
    sget v1, Lorg/chromium/ui/R$id;->date_time_suggestion_label:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    invoke-virtual {p0}, Lorg/chromium/ui/picker/DateTimeSuggestionListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    .line 40
    iget-object v2, p0, Lorg/chromium/ui/picker/DateTimeSuggestionListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/ui/R$string;->date_picker_dialog_other_button_label:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :goto_0
    return-object p2

    .line 43
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/ui/picker/DateTimeSuggestionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/ui/picker/DateTimeSuggestion;

    invoke-virtual {v2}, Lorg/chromium/ui/picker/DateTimeSuggestion;->localizedValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0, p1}, Lorg/chromium/ui/picker/DateTimeSuggestionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/picker/DateTimeSuggestion;

    invoke-virtual {v0}, Lorg/chromium/ui/picker/DateTimeSuggestion;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
