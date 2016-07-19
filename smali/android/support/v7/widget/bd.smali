.class final Landroid/support/v7/widget/bd;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 1326
    iput-object p1, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0, p3}, Landroid/support/v7/widget/SearchView;->a(Landroid/support/v7/widget/SearchView;I)Z

    .line 1334
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 1342
    return-void
.end method
