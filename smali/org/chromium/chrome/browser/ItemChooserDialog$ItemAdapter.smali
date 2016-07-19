.class Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ItemChooserDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final mBackgroundHighlightColor:I

.field private final mDefaultTextColor:I

.field private mDisabledEntries:Ljava/util/Set;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mSelectedItem:I

.field final synthetic this$0:Lorg/chromium/chrome/browser/ItemChooserDialog;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ItemChooserDialog;Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 132
    iput-object p1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->this$0:Lorg/chromium/chrome/browser/ItemChooserDialog;

    .line 133
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->mSelectedItem:I

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->mDisabledEntries:Ljava/util/Set;

    .line 135
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 137
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->light_active_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->mBackgroundHighlightColor:I

    .line 139
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->default_text_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->mDefaultTextColor:I

    .line 141
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->mSelectedItem:I

    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->this$0:Lorg/chromium/chrome/browser/ItemChooserDialog;

    # getter for: Lorg/chromium/chrome/browser/ItemChooserDialog;->mConfirmButton:Landroid/widget/Button;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->access$000(Lorg/chromium/chrome/browser/ItemChooserDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 148
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 187
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedItemKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->mSelectedItem:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;

    .line 156
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 157
    :goto_0
    return-object v0

    :cond_0
    # getter for: Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;->mKey:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;->access$100(Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 193
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 194
    check-cast p2, Landroid/widget/TextView;

    .line 201
    :goto_0
    iget v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->mSelectedItem:I

    if-ne p1, v0, :cond_1

    .line 202
    iget v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->mBackgroundHighlightColor:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 203
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    :goto_1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;

    .line 215
    # getter for: Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;->mDescription:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;->access$200(Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-object p2

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lorg/chromium/chrome/R$layout;->item_chooser_dialog_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object p2, v0

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 206
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->primary_text_disabled_material_light:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 210
    :cond_2
    iget v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->mDefaultTextColor:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;

    .line 177
    iget-object v1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->mDisabledEntries:Ljava/util/Set;

    # getter for: Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;->mKey:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;->access$100(Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 221
    iput p3, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->mSelectedItem:I

    .line 222
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->this$0:Lorg/chromium/chrome/browser/ItemChooserDialog;

    # getter for: Lorg/chromium/chrome/browser/ItemChooserDialog;->mConfirmButton:Landroid/widget/Button;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->access$000(Lorg/chromium/chrome/browser/ItemChooserDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->this$0:Lorg/chromium/chrome/browser/ItemChooserDialog;

    # getter for: Lorg/chromium/chrome/browser/ItemChooserDialog;->mItemAdapter:Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->access$300(Lorg/chromium/chrome/browser/ItemChooserDialog;)Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->notifyDataSetChanged()V

    .line 224
    return-void
.end method

.method public setEnabled(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 166
    if-eqz p2, :cond_0

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->mDisabledEntries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 171
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->notifyDataSetChanged()V

    .line 172
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemAdapter;->mDisabledEntries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
