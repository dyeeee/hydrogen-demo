<view class="index">
  <view class="index-profile">
    <image src="{{avatar}}" class="index-profile__img" />
  </view>
  <view class="index-title">
    我的书架
  </view>
  <view class="index-books">
    <view class="index-books__showLayer">
      <view class="index-books__item" qq:for="{{bookList}}" qq:key="index">
        <view class="index-books__title">书目：</view>
        <view class="index-books__controls--show" qq:if="{{ !item.isEditing }}">{{ item.bookName }}
        </view>
        <view class="index-books__controls--edit-area" qq:else>
         <input
            type="text"
            value="{{ item.bookName }}"
            confirm-type="完成"
            data-book-id="{{ item.id }}"
            bindinput="bindEditBookNameInput"
          />
        </view>
        <button
          class="index-books__controls--edit-btn btn"
          type="primary"
          data-book-id="{{ item.id }}"
          data-index="{{index}}"
          bindtap="{{ item.isEditing ? 'updateBook' : 'editBookButtonClicked' }}"
        >
        {{ item.isEditing ? '保存' : '编辑' }}
        </button>
        <button
          class="index-books__controls--delete btn"
          type="warn"
          data-book-id="{{ item.id }}"
          bindtap="deleteBook"
        >
          删除
        </button>
      </view>
    </view>

    <view class="index-books__input">
      <input
        type="text"
        placeholder="我的床头书"
        value="{{ createBookValue }}"
        confirm-type="完成"
        bindinput="bindCreateBookNameInput"
      />
    </view>
    <view class="index-books__controls">
      <button
        class="index-books__controls--create"
        bindtap="createBook"
        type="primary"
      >
        添加
      </button>
    </view>
  </view>
</view>
