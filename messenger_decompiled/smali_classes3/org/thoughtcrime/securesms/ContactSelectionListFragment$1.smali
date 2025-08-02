.class Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;
.super Ljava/lang/Object;
.source "ContactSelectionListFragment.java"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 154
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x7f090200

    const/4 v0, 0x1

    if-eq p1, p2, :cond_2

    const p2, 0x7f090210

    if-eq p1, p2, :cond_1

    const p2, 0x7f090217

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 159
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$200(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V

    return v0

    .line 156
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$100(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V

    return v0

    .line 162
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$300(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V

    return v0
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 137
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

    .line 138
    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {v0, p2}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$000(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;Landroid/view/Menu;)V

    const-string p2, "1"

    .line 143
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 3

    .line 170
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$402(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    .line 171
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$500(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->resetActionModeSelection()V

    .line 173
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 174
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x1010451

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 175
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    .line 176
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
