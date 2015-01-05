###
@require todo/todo.css
###

React = require 'react'
TodoList = require './list'

Todo = React.createClass
    getInitialState: ->
        items: [], text: ''

    onChange: (e) ->
        @setState text: e.target.value
    
    handleSubmit: (e) ->
        e.preventDefault()
        nextItems = @state.items.concat [@state.text]
        nextText = ''
        @setState items: nextItems, text: nextText

    render: ->
        <div>
            <h3 className='alert alert-info'>任务列表</h3>
            <TodoList items={@state.items} />
            <form onSubmit={@handleSubmit}>
                <input className='form-group form-control' onChange={@onChange} value={@state.text} />
                <button className='btn btn-success'><i className='glyphicon glyphicon-plus' /> 添加（ {@state.items.length} ）</button>
            </form>
        </div>

module.exports = Todo
